pragma solidity ^0.4.0;
import "./btcrelayInterface" as btcrelayInterface;
import "./BtcParser" as BtcParser;

library ValidateSPV {
    /// @notice                 Valides a tx inclusion in the block
    /// @param _txid            The txid (LE)
    /// @param _merkleRoot      The merkle root
    /// @param _proof           The proof (concatenated LE hashes)
    /// @param _index           The proof index
    /// @return                 true if fully valid, false otherwise
    function prove(
        bytes32 _txid,
        bytes32 _merkleRoot,
        bytes _proof,
        uint _index
    ) public pure returns (bool) {}
}

// "0xbe086099e0ff00fc0cfbc77a8dd09375ae889fbd", "0x85af7e7A6F15874C139695d6d8DC276a39c2d601", 30, 100
// Mainnet: 
contract BTC2ETH is BtcParser
{
    address public btcrelayAddress;
    bytes32[] public claimedTxs;
    address public admin;
    address public paymaster;
    uint public ether2BitcoinRate;
    bytes20 public bitcoinAddress;
    BtcParser public btcParser = new BtcParser();
    uint public feeRatio;
    address public validateSPVLibAddr = 0xaa75a0d48fca26ec2102ab68047e98a80a63df1d;
    ValidateSPV public validateSPV = new ValidateSPV(validateSPVLibAddr);
    
    event processedTransactionInfo(
        bytes rawTransaction,
        uint256 transactionHash,
        address sender,
        bytes senderPubKey,
        uint btcAmountSent,
        bytes20 output1Address
    );

    constructor(
        bytes20 btcAddress,
        address adminAddr,
        uint initialRate,
        uint initialFeeRatio
    ) public
    {
        admin = adminAddr;
        paymaster = msg.sender;
        bitcoinAddress = btcAddress;
        //default mainnet
        ether2BitcoinRate = initialRate;
        feeRatio = initialFeeRatio;
    }

    function withdrawFunds(uint amount) public
    {
        require(msg.sender == admin);
        admin.transfer(amount);
    }

    function getFeeRatio() public returns(uint)
    {
        return feeRatio;
    }

    function replacePaymaster(address newPaymaster) public
    {
        require(msg.sender == admin);
        paymaster = newPaymaster;
    }

    //admin/paymaster tops up the contract here
    function() public payable
    {
        require(msg.sender == admin || msg.sender == paymaster);
    }

    function getBitcoinAddress() public returns(bytes20)
    {
        return bitcoinAddress;
    }

    function setEther2BitcoinPrice(uint rate) public
    {
        require(msg.sender == admin);
        ether2BitcoinRate = rate;
    }

    function setFeeRation(uint newFeeRatio) public
    {
        require(msg.sender == admin);
        feeRatio = newFeeRatio;
    }

    function getCurrentRate() public view returns(uint)
    {
        return ether2BitcoinRate;
    }

    //uses the public key of the bitcoin address to generate the address
    //of the corresponding ether address
    //the same private key can claim the ether as was used to send the bitcoin
    function validateBitcoinTransactionForOrder(
        bytes32 _txid,
        bytes32 _merkleRoot,
        bytes _proof,
        uint _index, 
        bytes rawTransaction
    ) public 
    {
        //checks the tx is valid, can proceed from there to check if it went to the right place etc
        require(validateSPV.prove(_txid, _merkleRoot, _proof, _index));
        bytes32 hashedRawTx = keccak256(rawTransaction);
        checkClaims(claimedTxs, hashedRawTx);
        bytes memory senderPubKey = getPubKeyFromTx(rawTransaction);
        address sender = address(keccak256(senderPubKey));
        var (amt1, address1, amt2, address2) = btcParser.getFirstTwoOutputs(rawTransaction);
        processedTransactionInfo(rawTransaction, transactionHash, sender, senderPubKey, amt1, address1);
        require(address1 == bitcoinAddress); //first output goes to us, second is change
        uint amountToTransfer = amt1 * ether2BitcoinRate;
        uint feeToAdmin = amountToTransfer / feeRatio;
        sender.transfer(amountToTransfer - feeToAdmin);
        claimedTxs.push(keccak256(rawTransaction));
        //admin gets a fee for providing service and liquidity
        admin.transfer(feeToAdmin);
    }

    function checkClaims(bytes32[] claimTxs, bytes32 hashedRawTx) internal
    {
        for(uint i = 0; i < claimedTxs.length; i++)
        {
            require(claimedTxs[i] != hashedRawTx);
        }
    }

    function seeClaimedTxs() public returns(bytes32[])
    {
        return claimedTxs;
    }

    //TODO remove once sure the contract is fine
    function endContract() public
    {
        require(msg.sender == admin);
        selfdestruct(admin);
    }

}
