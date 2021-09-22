Feature: windows calculator

  Scenario Outline: calc automation using loop
  
* configure robot = { highlight: true }
* robot { fork: 'C:/Windows/System32/calc.exe' }
* click('Clear')
* click(value1)&&click(operation)&&click(value2)&&click('Equals')
#* input(value1)&&input(Key.(operation))&&input(value2)&&click('Equals')
* match locate('#CalculatorResults').name == result
* screenshot()
* click('Close Calculator')


  Examples:
    | operation   | value1    | value2    |  result        | 
    | Plus        | Two		    | Two       |  Display is 4  |
    | Minus       | Two		    | Two       |  Display is 0  | 
    | Multiply    | Two			  | Two       |  Display is 4  |
    | Divide      | Two		    | Two       |  Display is 1  |
