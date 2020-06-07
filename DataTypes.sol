pragma solidity  ^0.6.0;

contract DataTypes {
    
    /**
     * there are two different types of variables
     * State variables and local variables
     * State variables are stored on blockchain
     * local variables are used within the contract
     */
     
    //  State variables
    uint public stateValue = 100;
     
    //  Local variables
    
    function getValue() public pure returns(uint) {
        uint value = 1; // values is local to the function
        return value;
    }
    
    /**
     * DataTypes
     * uint, int, string, bytes32, address, struct
     */
     
     int aInt; // can be -1, 2, 0, 8
     uint myUint; // can be 1, 2, 4. also known as uint256
     uint8 _Myuint8; // allocates lesser space, and improves space
     
     string public _string = "Hello World"; // gas requirement high
     bytes32 public _bytes32 = "Hello World"; // same as string, but more performant than a string
     
     address public _address = 0x32Be343B94f860124dC4fEe278FDCBD38C102D88; // no quotation marks
     
     // create your own custom data structures using structs, you can put your own data types in a struct
     // a way for to model any arbitary data, can represent a person, a vote etc.
     struct MyStruct {
         uint8 id;
         string name;
     }
     
    //  using a struct
    MyStruct public _mystruct = MyStruct(1, "Hello World");
    
     
}