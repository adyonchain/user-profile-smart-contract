// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserProfile {

    struct User {
        string name;
        uint age;
        string email;
        uint256 registeredAt;
        bool exists;
    }

    mapping(address => User) private users;

    /// @notice Registers a new user with name, age, and email
    function register(string memory _name, uint _age, string memory _email) external {
        require(!users[msg.sender].exists, "User already registered");
        users[msg.sender] = User({
            name: _name,
            age: _age,
            email: _email,
            registeredAt: block.timestamp,
            exists: true
        });
    }

    /// @notice Updates the profile information for a registered user
    function updateProfile(string memory _name, uint _age, string memory _email) external {
        require(users[msg.sender].exists, "User not registered");
        users[msg.sender].name = _name;
        users[msg.sender].age = _age;
        users[msg.sender].email = _email;
    }

    /// @notice Returns the profile information of the user calling the function
    function getProfile() external view returns (string memory, uint, string memory, uint256) {
        require(users[msg.sender].exists, "User not registered");
        User memory user = users[msg.sender];
        return (user.name, user.age, user.email, user.registeredAt);
    }
}