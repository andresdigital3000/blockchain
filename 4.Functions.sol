pragma solidity ^0.4.24;
contract FunctionsContract {
    string public text = '';
    int numberOfChanges = 0;
    
    function changeVariable() public {
        numberOfChanges++;
        text = "changeVariable";
        //text = new string ("numberOfChanges" + text);
    }
    
    function getVariable() public view returns (int)  {
        return numberOfChanges;
    }
    
}
