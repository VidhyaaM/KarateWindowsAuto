Feature: windows calculator

Scenario: Calc open, calling loop operation and close
* configure robot = { highlight: true }
* robot { fork: 'C:/Windows/System32/calc.exe' }
* karate.call('calcloop.feature@tag1')
* click('Close Calculator') 


