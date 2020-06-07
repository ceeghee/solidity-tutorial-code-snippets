pragma solidity ^0.6.0;

contract Array {
    /**
     * Data Structures
     * Arrays, mapping
     */
     
     // Array
     // a way of storing a list of information in order
     
     uint[] public myArray = [1,2,3];
     string[] public values;
     uint[][] public array2D = [ [1,2,3,4], [5,6,7,8] ];
     
     function addValueToAddray(string memory _value) public {
         values.push(_value);
     }
     
     function valueCount() public view returns (uint) {
         return values.length;
     }
     
}