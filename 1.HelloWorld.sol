pragma solidity ^0.4.24;
contract HelloWorldContract {
    string store = "abcdef";
    
    function getStore() public view returns (string) {
        return store;
    }
    
    function setStore(string value) public {
        store = value;
    }
}
