// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Contract will send a greeting on the Ethereum Network
contract Greeter {
    string private _greeting = "Hello, World!";
    address private _owner;

    constructor() public {
        _owner = msg.sender;
    }

    modifier onlyOwner() {
        require(
            msg.sender == _owner,
            "Ownable: caller is not the owner"
        );
        _;
    }

    function greet() external view returns(string memory) {
        return _greeting;
    }

    function setGreeting(string calldata greeting) external onlyOwner {
        _greeting = greeting;
    }

    function owner() public view returns(address) {
        return _owner;
    }
}