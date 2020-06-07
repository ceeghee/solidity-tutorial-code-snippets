pragma solidity ^0.6.0;

contract Counter {
    
    // count is a state variable that is actually being stored on the blockchain itself i.e it is permanent.
    // count is stored on the blockchain
    // whenever you assign an access modifier to a state variable, solidit automatically generates a function and returns the variable
    uint public count = 0;  // unsigned interger, meaning it can only be a positive integer
    
    // constructor function is a special function that gets run and only once when ever the smart contract is
    // deployed to the blockchain, any code that is put inside is run any time we deploy to the blockchain
    
    // constructor() public {
    //     count = 0;
    // }
    
    // function getCount() public view returns (uint) {
    //     return count; 
    // }
    
    function incrementCount () public {
        count = count + 1; // changes the data in the blockchain
    }
}