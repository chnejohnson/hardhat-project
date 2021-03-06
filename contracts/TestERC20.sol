// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * ERC20 test contract.
 */
contract TestERC20 is ERC20("MyAwesomeToken", "MAT") {
    constructor(
        address[] memory _initialAccounts,
        uint256 _supply,
        uint8 _decimals
    ) {
        _setupDecimals(_decimals);
        for (uint256 i = 0; i < _initialAccounts.length; i++) {
            _mint(_initialAccounts[i], _supply * 10**uint256(_decimals));
        }
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}
