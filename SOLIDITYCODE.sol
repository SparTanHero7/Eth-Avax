pragma solidity ^0.8.13;

contract ErrorCode {
    function Require(uint _i) public pure {
        require(_i > 11, "Input must be greater than 11");
    }

    function Revert(uint _i) public pure {

        if (_i <= 11) {
            revert("Input must be greater than 11");
        }
    }

    uint public number;

    function Assert() public view {
        assert(number == 0);
    }

    error LowBalance(uint balance, uint withdrawalAmount);

    function TryCustomError(uint _withdrawalAmount) public view {
        uint balance = address(this).balance;
        if (balance < _withdrawalAmount) {
            revert LowBalance({balance: balance, withdrawalAmount: _withdrawalAmount});
        }
    }
}
