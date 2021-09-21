Feature: windows calculator

Scenario: calc automation
* configure robot = { highlight: true }
* robot { fork: 'C:/Windows/System32/calc.exe' }

#Addition operation
* click('Clear')&&click('One')&&click('Plus')&&click('Two')&&click('Equals')
* match locate('#CalculatorResults').name == 'Display is 3'
* screenshot()

#Subraction operation input using mouse click
* click('Clear')
* click('Two')&&click('Minus')&&click('Two')&&click('Equals')
* match locate('#CalculatorResults').name == 'Display is 0'
* screenshot()

#multiplication operation input using keyboard click
* click('Clear')
#* click('Two')&&click('Into')&&click('Two')
* input('2')&&input(Key.MULTIPLY)&&input('2')
* click('Equals')
* match locate('#CalculatorResults').name == 'Display is 4'
* screenshot()

#division operation input using keyboard click
* click('Clear')
* input('4')&&input(Key.DIVIDE)&&input('2')
* click('Equals')
* match locate('#CalculatorResults').name == 'Display is 2'
* screenshot()

* click('Close Calculator')