// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "github.com/OpenZeppelin/zeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "github.com/OpenZeppelin/zeppelin-solidity/contracts/utils/math/SafeMath.sol";

contract Ruck is ERC20 {
    string private _name = 'Ruck';
    string private _symbol = 'RUCK';
    uint8 private _decimals = 9;

    uint256 private _total = 10**9 * (10 ** _decimals);

    constructor () ERC20(_name, _symbol) {
        _mint(msg.sender, _total);
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    function mywallet() public view returns(address) {
        return msg.sender;
    }
}
