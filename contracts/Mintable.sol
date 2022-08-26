pragma solidity =0.6.5;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract MintableERC20 is ERC20, Ownable {
    constructor(
        uint256 _initialSupply,
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) public ERC20(_name, _symbol) {
        _setupDecimals(_decimals);
        if (_initialSupply > 0) {
            _mint(msg.sender, _initialSupply);
        }
    }

    /**
     * @dev Mints `amount` tokens to the input parameter.
     *
     * See {ERC20-_mint}.
     */
    function mint(address to, uint256 value) public onlyOwner returns (bool) {
        _mint(to, value);
        return true;
    }
}
