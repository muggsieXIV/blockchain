pragma solidity ^0.5.0;

import "./Token.sol";

// Deposit and Withdrawl Funds
// Manage Orders - Make and/or cancel them
// Manage Trades - Change Fees

// TODO:
// [X] Set the Fee Account
// [] Deposit Ether
// [] Withdrawl Ether
// [] Deposit Tokens
// [] Withdrawl Tokens
// [] Check Balances
// [] Make Orders
// [] Cancel Order
// [] Charge Fees


contract Exchange {
    // Variables
    address public feeAccount; // The account that recieves exchange fees
    uint256 public feePercent; // the fee percentage

    constructor(address _feeAccount, uint256 _feePercent) public {
        feeAccount = _feeAccount;
        feePercent = _feePercent;
    }

    function depositToken(address _token, uint256 _amount) public {
        // Which ERC20 Token?
        Token(_token).transferFrom(msg.sender, address(this), _amount);
        // How much? 
        
        // Send tokens to this contract
        // Manage Deposit - update balance
        // Emit event
    }

}


