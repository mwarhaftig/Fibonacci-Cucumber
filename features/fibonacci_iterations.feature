Feature: Fibonacci value calculator
  In order to determine a Fibonacci number, 
  As an end user entering a value n
  I want to get back the nth Fibonacci value.

Scenario: Valid input of n=10 
  Given an end user wants to find a Fibonacci value 
  When n=10 is inputted
  Then the Fibonacci calculator should return a value of 55

Scenario: Valid input of n=13
  Given an end user wants to find a Fibonacci value 
  When n=13 is inputted
  Then the Fibonacci calculator should return a value of 233

Scenario: Valid input of n=0 (edge case)
  Given an end user wants to find a Fibonacci value
  When n=0 is inputted
  Then the Fibonacci calculator should return a value of 0

Scenario: Valid input of n=1 (edge case)
  Given an end user wants to find a Fibonacci value
  When n=1 is inputted
  Then the Fibonacci calculator should return a value of 1

Scenario: Non-integer value for n
  Given an end user wants to find a Fibonacci value
  When n=threeve is inputted
  Then the Fibonacci calculator should return an error message

Scenario: Null value for n
  Given an end user wants to find a Fibonacci value
  When n=null is inputted
  Then the Fibonacci calculator should return an error message

Scenario: Value of n too large
  Given an end user wants to find a Fibonacci value
  When n=999999999 is inputted
  Then the Fibonacci calculator should return an error message

