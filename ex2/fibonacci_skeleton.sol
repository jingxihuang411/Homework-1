pragma solidity ^0.4.16;


contract Fibonacci {
    uint numCalc;
    uint[] fibCalculated;
    /* store all calculated fibonacci numbers*/
    uint[] allCalculated;

    event calcFib (
      uint _fibNum
    );

	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
		delete fibCalculated;
		fibCalculated.push(1);
		fibCalculated.push(1);
		for (uint i = 2; i < position; i++) {
		    fibCalculated.push(fibCalculated[i-1] + fibCalculated[i-2]);
		}
		calcFib(fibCalculated[position-1]);
		allCalculated.push(fibCalculated[position-1]);
		return fibCalculated[position-1];
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function () {
	    return;
	}

}
