//Ropsten: 0x41839C8c911E130EFFf4Ea9aF467fe9d25e0D2e8
//xcontract (ropsten): https://xcontract.herokuapp.com/api/[%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[%20%7B%20%22name%22:%20%22amount%22,%20%22type%22:%20%22uint256%22%20%7D%20],%20%22name%22:%20%22withdrawFunds%22,%20%22outputs%22:%20[],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[],%20%22name%22:%20%22getRelayAddress%22,%20%22outputs%22:%20[%20%7B%20%22name%22:%20%22%22,%20%22type%22:%20%22address%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20true,%20%22inputs%22:%20[],%20%22name%22:%20%22btcrelayAddress%22,%20%22outputs%22:%20[%20%7B%20%22name%22:%20%22%22,%20%22type%22:%20%22address%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22view%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[%20%7B%20%22name%22:%20%22rate%22,%20%22type%22:%20%22uint256%22%20%7D%20],%20%22name%22:%20%22setEtherToBitcoinRate%22,%20%22outputs%22:%20[],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20true,%20%22inputs%22:%20[],%20%22name%22:%20%22bitcoinAddress%22,%20%22outputs%22:%20[%20%7B%20%22name%22:%20%22%22,%20%22type%22:%20%22bytes20%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22view%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[%20%7B%20%22name%22:%20%22bitcoinAddress%22,%20%22type%22:%20%22bytes20%22%20%7D%20],%20%22name%22:%20%22getOrders%22,%20%22outputs%22:%20[%20%7B%20%22components%22:%20[%20%7B%20%22name%22:%20%22etherAmount%22,%20%22type%22:%20%22uint256%22%20%7D,%20%7B%20%22name%22:%20%22bitcoinAmountAtRate%22,%20%22type%22:%20%22uint256%22%20%7D,%20%7B%20%22name%22:%20%22dueTimestamp%22,%20%22type%22:%20%22uint256%22%20%7D,%20%7B%20%22name%22:%20%22refundAddress%22,%20%22type%22:%20%22address%22%20%7D%20],%20%22name%22:%20%22%22,%20%22type%22:%20%22tuple[]%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[%20%7B%20%22components%22:%20[%20%7B%20%22name%22:%20%22etherAmount%22,%20%22type%22:%20%22uint256%22%20%7D,%20%7B%20%22name%22:%20%22bitcoinAmountAtRate%22,%20%22type%22:%20%22uint256%22%20%7D,%20%7B%20%22name%22:%20%22dueTimestamp%22,%20%22type%22:%20%22uint256%22%20%7D,%20%7B%20%22name%22:%20%22refundAddress%22,%20%22type%22:%20%22address%22%20%7D%20],%20%22name%22:%20%22order%22,%20%22type%22:%20%22tuple%22%20%7D,%20%7B%20%22name%22:%20%22orderOwner%22,%20%22type%22:%20%22bytes20%22%20%7D%20],%20%22name%22:%20%22getRefundForOrder%22,%20%22outputs%22:%20[],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[%20%7B%20%22name%22:%20%22_txid%22,%20%22type%22:%20%22bytes32%22%20%7D,%20%7B%20%22name%22:%20%22_merkleRoot%22,%20%22type%22:%20%22bytes32%22%20%7D,%20%7B%20%22name%22:%20%22_proof%22,%20%22type%22:%20%22bytes%22%20%7D,%20%7B%20%22name%22:%20%22_index%22,%20%22type%22:%20%22uint256%22%20%7D,%20%7B%20%22name%22:%20%22rawTransaction%22,%20%22type%22:%20%22bytes%22%20%7D%20],%20%22name%22:%20%22validateBitcoinTransactionForOrder%22,%20%22outputs%22:%20[%20%7B%20%22name%22:%20%22%22,%20%22type%22:%20%22bool%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[],%20%22name%22:%20%22endContract%22,%20%22outputs%22:%20[],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[],%20%22name%22:%20%22getBitcoinAddress%22,%20%22outputs%22:%20[%20%7B%20%22name%22:%20%22%22,%20%22type%22:%20%22bytes20%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20true,%20%22inputs%22:%20[],%20%22name%22:%20%22etherToBitcoinRate%22,%20%22outputs%22:%20[%20%7B%20%22name%22:%20%22%22,%20%22type%22:%20%22uint256%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22view%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20true,%20%22inputs%22:%20[],%20%22name%22:%20%22getCurrentRate%22,%20%22outputs%22:%20[%20%7B%20%22name%22:%20%22%22,%20%22type%22:%20%22uint256%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22view%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20true,%20%22inputs%22:%20[],%20%22name%22:%20%22admin%22,%20%22outputs%22:%20[%20%7B%20%22name%22:%20%22%22,%20%22type%22:%20%22address%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22view%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22constant%22:%20false,%20%22inputs%22:%20[%20%7B%20%22name%22:%20%22receiverBtcAddress%22,%20%22type%22:%20%22bytes20%22%20%7D,%20%7B%20%22name%22:%20%22refundAddr%22,%20%22type%22:%20%22address%22%20%7D%20],%20%22name%22:%20%22placeOrder%22,%20%22outputs%22:%20[],%20%22payable%22:%20true,%20%22stateMutability%22:%20%22payable%22,%20%22type%22:%20%22function%22%20%7D,%20%7B%20%22inputs%22:%20[%20%7B%20%22name%22:%20%22btcAddress%22,%20%22type%22:%20%22bytes20%22%20%7D,%20%7B%20%22name%22:%20%22adminAddr%22,%20%22type%22:%20%22address%22%20%7D,%20%7B%20%22name%22:%20%22initialRate%22,%20%22type%22:%20%22uint256%22%20%7D,%20%7B%20%22name%22:%20%22initialFeeRatio%22,%20%22type%22:%20%22uint256%22%20%7D%20],%20%22payable%22:%20false,%20%22stateMutability%22:%20%22nonpayable%22,%20%22type%22:%20%22constructor%22%20%7D,%20%7B%20%22payable%22:%20true,%20%22stateMutability%22:%20%22payable%22,%20%22type%22:%20%22fallback%22%20%7D%20]/0x41839C8c911E130EFFf4Ea9aF467fe9d25e0D2e8

pragma solidity ^0.4.0;
pragma experimental ABIEncoderV2;

import {BtcParser} from "https://raw.githubusercontent.com/James-Sangalli/learn-solidity-with-examples/master/Finance/bitcoin-to-ethereum-swap/BtcParser.sol";
import {ValidateSPV} from "https://raw.githubusercontent.com/James-Sangalli/bitcoin-spv/master/contracts/ValidateSPV.sol";

contract ETH2BTC 
{
    struct Order
    {
      uint etherAmount;
      uint bitcoinAmountAtRate;
      uint dueTimestamp;
      address refundAddress;
    }

    mapping (bytes20 => Order[]) orders; //bytes20 is a bitcoin address
    address public btcrelayAddress;
    address public admin;
    uint public etherToBitcoinRate;
    bytes20 public bitcoinAddress;
    // address public validateSPVLibMainnet = 0xaa75a0d48fca26ec2102ab68047e98a80a63df1d;
    // address public validateSPVLibRopsten = 0x37e3b3bff46507345dd3559027a91a76cfc430c8;
    //"0xbe086099e0ff00fc0cfbc77a8dd09375ae889fbd", "0x85af7e7A6F15874C139695d6d8DC276a39c2d601", 30, 100
    constructor(
      bytes20 btcAddress,
      address adminAddr,
      uint initialRate,
      uint initialFeeRatio
    ) public
    {
        admin = adminAddr;
        bitcoinAddress = btcAddress;
        etherToBitcoinRate = initialRate;
    }

    function withdrawFunds(uint amount) public
    {
        require(msg.sender == admin);
        admin.transfer(amount);
    }

    //admin can top up the contract
    function() public payable
    {
        require(msg.sender == admin);
    }

    function getRelayAddress() public returns(address)
    {
        return btcrelayAddress;
    }

    function getBitcoinAddress() public returns(bytes20)
    {
        return bitcoinAddress;
    }

    function setEtherToBitcoinRate(uint rate) public
    {
        require(msg.sender == admin);
        etherToBitcoinRate = rate;
    }

    function getCurrentRate() public view returns(uint)
    {
        return etherToBitcoinRate;
    }

    //should be done by market maker but if defunct, it can be done by anyone
    function validateBitcoinTransactionForOrder(
        bytes32 _txid,
        bytes32 _merkleRoot,
        bytes _proof,
        uint _index, 
        bytes rawTransaction
    ) public returns(bool)
    {
        //checks the tx is valid, can proceed from there to check if it went to the right place etc
        require(ValidateSPV.prove(_txid, _merkleRoot, _proof, _index));
        bytes memory senderPubKey = BtcParser.getPubKeyFromTx(rawTransaction);
        bytes20 senderAddress = bytes20(sha256(sha256(senderPubKey)));
        //require that the market maker sent the bitcoin
        require(senderAddress == bitcoinAddress);
        //first output goes to the order maker by deriving their btc address
        //from their ether pub key
        var (amt1, address1, amt2, address2) = BtcParser.getFirstTwoOutputs(rawTransaction);
        for(uint i = 0; i < orders[address1].length; i++)
        {
            //if two identical orders, simply grab the first one
            if(orders[address1][i].bitcoinAmountAtRate == amt1)
            {
                //once order is found, delete it
                //that way it is now claimed and can't be claimed multiple times
                //order can be claimed even if past due date, so long as the sender
                //hasn't already got a refund (in which case it would be refunded and the order deleted)
                //market maker should ensure they relay the bitcoin tx before expiry, else they could
                //be cheated out of their bitcoins by someone claiming to have not received them
                //when in fact they have but it hasn't been relayed
                delete orders[address1][i];
                return true;
            }
        }
        return false;
    }

    //sender can provide any bitcoin address they want to receive bitcoin on
    function placeOrder(
        bytes20 receiverBtcAddress,
        address refundAddr
    ) public payable
    {
        require(msg.value > 0);
        //in case user doesn't set the refund address
        if(refundAddr == address(0)) refundAddr = msg.sender;
        //fees can be done by using a slightly above market rate
        uint btcAmount = msg.value * etherToBitcoinRate;
        //two weeks from order, should be processed well before this date but includes a margin of safety
        uint dueDate = block.timestamp + 1296000;
        Order memory newOrder = Order(msg.value, btcAmount, dueDate, refundAddr);
        orders[receiverBtcAddress].push(newOrder);
    }

    function getOrders(bytes20 bitcoinAddress) public returns(Order[])
    {
        return orders[bitcoinAddress];
    }

    //call this if bitcoin transaction never arrives and order is still present
    //this should never happen, but if for whatever reason the market maker is down
    //the user can get their money back
    function getRefundForOrder(
      Order order,
      bytes20 orderOwner
    ) public
    {
        bool orderIsPresent = false;
        uint pos = 0;
        bytes32 hashOfOrder = keccak256(
            abi.encodePacked(
                order.etherAmount,
                order.bitcoinAmountAtRate,
                order.dueTimestamp,
                order.refundAddress
            )
        );
        for(uint i = 0; i < orders[orderOwner].length; i++)
        {
            Order memory currentOrder = orders[orderOwner][i];
            bytes32 orderHash = keccak256(
                abi.encodePacked(
                    currentOrder.etherAmount,
                    currentOrder.bitcoinAmountAtRate,
                    currentOrder.dueTimestamp,
                    currentOrder.refundAddress
                )
            );
            if(orderHash == hashOfOrder)
            {
                orderIsPresent = true;
                pos = i;
                break;
            }
        }
        require(orderIsPresent);
        require(order.dueTimestamp > block.timestamp);
        order.refundAddress.transfer(order.etherAmount);
        delete orders[orderOwner][pos];
    }

    //TODO remove once sure the contract is fine
    function endContract() public
    {
        require(msg.sender == admin);
        selfdestruct(admin);
    }

}
