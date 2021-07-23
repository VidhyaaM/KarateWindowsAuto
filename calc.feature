Feature: windows calculator

Scenario: calc automation
* robot { window: 'Calculator' }
* click('Clear')
* click('One')
* click('Plus')
* click('Two')
* click('Equals')
* match locate('#CalculatorResults').name == 'Display is 3'
* screenshot()
* click('Close Calculator')