//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Mytoken {
    uint256 public supply;
    string public token;
    string public symbol;
    address public owner;

    mapping(address => uint) public AcBalance;

    constructor(string memory _token, string memory _symbol, uint _supply) {
        token = _token;
        symbol = _symbol;
        supply = _supply;
        owner = msg.sender;
    }



    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    error InsuficientBalance(uint256 YourBalance, uint256 YourAmount);

    function burn(address _address, uint256 amount) public {
        if (AcBalance[_address] < amount) {
            revert InsuficientBalance({
                YourBalance: AcBalance[_address],
                YourAmount: amount
            });
        }
        supply -= amount;
        AcBalance[_address] -= amount;
    }

    function transfer(address sender, address receiver, uint256 amount) public {
        if (AcBalance[sender] < amount) {
            revert InsuficientBalance({
                YourBalance: AcBalance[sender],
                YourAmount: amount
            }); 
        }
        AcBalance[sender] -= amount;
        AcBalance[receiver] += amount;
    }

    function mint(address _address, uint amount) public onlyOwner {
        supply += amount;
        AcBalance[_address] += amount;
    }
}
