pragma solidity =0.6.5;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20Capped.sol';

contract CappedERC20 is ERC20Capped {
    constructor(
        uint256 _initialSupply,
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) public ERC20(_name, _symbol) ERC20Capped(_initialSupply) {
        _setupDecimals(_decimals);
        _mint(msg.sender, _initialSupply);
    }
}
