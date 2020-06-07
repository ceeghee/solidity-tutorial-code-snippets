pragma solidity ^0.6.0;

contract Mapping {
    
    // a mapping is a key value store.
    
    mapping(uint => string) public names;
    mapping(uint => Book) public books; // uint is were the key goes, string is were the value goes/
    
    // nested mapping i.e mapping of a mapping.
    mapping(address => mapping(uint => Book)) public myBooks; // asign book to specific user based on their eth address
    
    struct Book {
        string title;
        string author;
    }
    
    constructor() public {
        names[1] = "Mikel";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
        // msg.sender is the key for the address, while _id is the key for the book
    }
}