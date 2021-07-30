// SPDX-License-Identifier: GPL-3.0-only
pragma solidity =0.5.16;

// Loyalty tracks users contribution to a collective program.
// contribution = points x time;
// The longer the time period, the better; More points, the better.

contract Loyalty {

    struct User {
        uint256 points; // The total points he earned.
        uint256 contribution; // Accumulated sum of his contribution.
        uint256 lastUpdatedTime; // When the sum was updated.
    }

    // A map to track all users points and contribution;
    mapping(address => User) private users; // user address => user
    
    // A total registry to track the whole program points and contribution;
    User private total;

    constructor () {
        total.points = 0;
        total.contribution = 0;
        total.lastUpdatedTime = uint256(block.timestamp);
    }

    // Add points to a user
    function addPoints(address _who, uint256 _amount) public {
        update(_who);
        users[_who].points += _amount;
    }

    // Remove points from user
    function removePoints(address _who, uint256 _amount) public {
        update(_who);
        require(users[_who].points >= _amount, "Loyalty: points not enough");
        users[_who].points -= _amount;
    }

    // View points of a user
    function viewPoints(address _who) public view returns (uint256) {
        return users[_who].points;
    }

    // View contribution of a user
    function viewContribution(address _who) public view returns (uint256) {
        User memory user = users[_who];
        if (user.lastUpdatedTime == 0) {
            return 0;
        }
        return user.contribution + calculateContribution(user.lastUpdatedTime, block.timestamp, user.points);
    }

    // update the user contribution;
    function update(address _who) internal {
        uint256 currentTime = block.timestamp; // save gas
        User memory user = users[_who]; // save gas

        if (user.lastUpdatedTime > 0) { // existing user, update his profile
            assert(user.lastUpdatedTime <= currentTime);
            users[_who].contribution += calculateContribution(
                user.lastUpdatedTime,
                currentTime,
                user.points
            );
        }

        users[_who].lastUpdatedTime = currentTime;
    }

    // Calculate the contribution during a time period;
    function calculateContribution(
        uint256 t1,
        uint256 t2,
        uint256 points
    ) internal pure returns (uint256) {
        require(t1 <= t2, "t1 should be <= t2");
        return (t2 - t1) * points;
    }
}