 Feature: windows calculator
 
  value1 and value2 are constants used for the operations
 @tag1
 Scenario Outline: calc automation using loop
 
* click('Clear')
* click(value1)&&click(operation)&&click(value2)&&click('Equals')
#* input(value1)&&input(Key.(operation))&&input(value2)&&click('Equals')
* match locate('#CalculatorResults').name == result
* screenshot()
	  Examples:
	     | operation | value1 | value2| result        |   
         | Plus      | Two	  | Two   | Display is 4  |
	     | Minus     | Two	  | Two   | Display is 0  | 
	     | Multiply  | Two	  | Two   | Display is 4  |
	     | Divide    | Two	  | Two   | Display is 1  |
