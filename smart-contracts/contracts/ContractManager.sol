// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract ContractManager {
    string private ipfsHash;
enum Status { Pending, Approved, Rejected }
    struct LeaveRequest {
        address employee;
        string reason;
        uint256 startDate;
        uint256 endDate;
        Status status;
    }

    struct User {
        string email;
        string role; // "employeur" or "employee"
    }

    mapping(address => User) private users; // Mapping pour stocker l'email et le rôle de l'utilisateur
    LeaveRequest[] private leaveRequests;

    // Fonction pour définir l'IPFS hash
    function ipfsSetHash(string memory _ipfshash) public {
        ipfsHash = _ipfshash;
    }

    // Fonction pour obtenir l'IPFS hash
    function ipfsGetHash() public view returns (string memory) {
        return ipfsHash;
    }

    // Inscription d'un utilisateur (rôle et email) - sans mot de passe
    function registerUser(string memory _email, string memory _role) public {
        require(bytes(_email).length > 0, "Email required");
        require(bytes(_role).length > 0, "Role required");
        users[msg.sender] = User(_email, _role); // Enregistrer l'utilisateur avec l'adresse (msg.sender)
    }

    // Obtenir le rôle d'un utilisateur
    function getUserRole(address user) public view returns (string memory) {
        return users[user].role;
    }

    // Demande de congé
    function submitLeaveRequest(string memory _reason, uint256 _startDate, uint256 _endDate) public {
        leaveRequests.push(LeaveRequest(msg.sender, _reason, _startDate, _endDate));
    }
    // Mettre à jour le statut d'une demande de congé
    function updateLeaveRequestStatus(uint256 index, Status _status) public {
        // Seul l'employeur peut modifier le statut
        require(keccak256(bytes(users[msg.sender].role)) == keccak256(bytes("employeur")), "Only employer can update status");
        require(index < leaveRequests.length, "Invalid index");

        LeaveRequest storage request = leaveRequests[index];
        request.status = _status;
    }


    // Obtenir le nombre de demandes de congé
    function getLeaveRequestCount() public view returns (uint256) {
        return leaveRequests.length;
    }

    // Obtenir les informations d'une demande de congé par index
    function getLeaveRequestByIndex(uint256 index) public view returns (address, string memory, uint256, uint256) {
        require(index < leaveRequests.length, "Invalid index");
        LeaveRequest memory request = leaveRequests[index];
        return (request.employee, request.reason, request.startDate, request.endDate);
    }
}