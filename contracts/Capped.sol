pragma solidity =0.6.5;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Capped is ERC20 {
    constructor(
        uint256 _initialSupply,
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) public ERC20(_name, _symbol) {
        _setupDecimals(_decimals);
        _mint(msg.sender, _initialSupply);
    }
}
