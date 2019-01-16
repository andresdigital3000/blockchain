pragma solidity ^0.4.24;
contract ValidateOwnerContract {
    string public store = "abcdef";
    address owner;
    
    constructor () public {
        owner = msg.sender;
    }
    
    modifier onlyOwner{
        if(owner != msg.sender) {
            revert();
        } else {
            _;
        }
    }
    
    function getStore() public view returns (string) {
        return store;
    }
    
    function setStore(string value) public onlyOwner returns (string) {
        if (owner != msg.sender) {
            return "Esta no es tu cuenta";
        }
        store = value;
        return "Cambiaste exitosamente el valor";
    }
}
