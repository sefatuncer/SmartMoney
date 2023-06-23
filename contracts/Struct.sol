//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract Wallet {

    // address sender;
    // uint valueSent;
    PaymentReceived public payment;

    function payContract() public payable {
        // sender = msg.sender;
        // valueSent = msg.value;
        payment = new PaymentReceived(msg.sender,msg.value);
    }

}

contract PaymentReceived {
    address public from;
    uint public amount;

    constructor(address _from, uint _amout) {
        from = _from;
        amount = _amout;
    }
}

contract Wallet2 {
    
    struct PaymentReceivedStruct {
        address from;
        uint amount;
    }

    PaymentReceivedStruct public payment;

    function payContract() public payable {
        payment = PaymentReceivedStruct(msg.sender,msg.value);
        // payment.from = msg.sender;
        // payment.amount = msg.value;
    }
}