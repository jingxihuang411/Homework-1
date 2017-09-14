pragma solidity ^0.4.13;


contract greeter {
	/* Add one variable to hold our greeting */
	string[] greetings;
	uint count;

	function greeter(string _greeting) public {
		/* Write one line of code for the contract to set our greeting */
 	        greetings.push(_greeting);
   	        count = 0;
	}

	function sendAnotherGreet(string _greet) {
	        greetings.push(_greet);
	        count += 1;
        }

	function greet() constant returns (string)  {
		/* Write one line of code to allow the contract to return our greeting */
		return greetings[count];
	}

	function greetCount() constant returns (uint) {
	        return count + 1;
	}
}
