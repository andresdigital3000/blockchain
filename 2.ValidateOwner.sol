pragma solidity ^0.4.24;
contract ValidateOwnerContract {
    string public store = "abcdef";
    address owner;
    
    constructor () {
        owner = msg.sender;
    }
    
    function getStore() public view returns (string) {
        return store;
    }
    
    function setStore(string value) public returns (string){
        if (owner != msg.sender) {
            return "Esta no es tu cuenta";
        }
        store = value;
        return "Cambiaste exitosamente el valor";
    }
}
