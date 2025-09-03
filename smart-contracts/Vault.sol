// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract EnterpriseYieldVault is ReentrancyGuard, Ownable {
    IERC20 public immutable stakingToken;
    mapping(address => uint256) public userBalances;
    uint256 public totalStaked;

    event Deposited(address indexed user, uint256 amount);
    event Withdrawn(address indexed user, uint256 amount);

    constructor(address _token) {
        stakingToken = IERC20(_token);
    }

    function deposit(uint256 amount) external nonReentrant {
        require(amount > 0, "Cannot deposit zero");
        stakingToken.transferFrom(msg.sender, address(this), amount);
        userBalances[msg.sender] += amount;
        totalStaked += amount;
        emit Deposited(msg.sender, amount);
    }

    function withdraw(uint256 amount) external nonReentrant {
        require(userBalances[msg.sender] >= amount, "Insufficient balance");
        userBalances[msg.sender] -= amount;
        totalStaked -= amount;
        stakingToken.transfer(msg.sender, amount);
        emit Withdrawn(msg.sender, amount);
    }
}

// Optimized logic batch 3071
// Optimized logic batch 9916
// Optimized logic batch 2446
// Optimized logic batch 5237
// Optimized logic batch 1731
// Optimized logic batch 5831
// Optimized logic batch 6442
// Optimized logic batch 6394
// Optimized logic batch 7072
// Optimized logic batch 9869
// Optimized logic batch 5665
// Optimized logic batch 5941
// Optimized logic batch 4333
// Optimized logic batch 4901
// Optimized logic batch 2952
// Optimized logic batch 3250
// Optimized logic batch 9222
// Optimized logic batch 9593
// Optimized logic batch 3688