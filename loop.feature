Feature: karate loop operation
Scenario: looping with repeat function
* def fun = function(i){ return i * 2 }
* def foo = karate.repeat(5, fun)
* match foo == [0, 2, 4, 6, 8]

* def foo = []
* def fun = function(i){ karate.appendTo(foo, i) }
* karate.repeat(5, fun)
* match foo == [0, 1, 2, 3, 4]

# generate test data easily
* def fun = function(i){ return { name: 'User ' + (i + 1) } }
* def foo = karate.repeat(3, fun)
* match foo == [{ name: 'User 1' }, { name: 'User 2' }, { name: 'User 3' }]

# generate a range of numbers as a json array
* def foo = karate.range(4, 9)
* match foo == [4, 5, 6, 7, 8, 9]
