Grammar Method Design Recipe

1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

good_grammar = check_grammar(text)

good_grammar will return a boolean
text will be a string of words

No side effects

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# 1
check_grammar("")
=> fail "Not a sentence."

# 2
check_grammar("here is a bad sentence)
=> false

# 3
check_grammar(Here is almost good)
=> false

# 4
check_grammar(here is almost good.)
=> false

# 5
check_grammar(Here is good!)
=> true

# 6
check_grammar(Is this good?)
=> true




4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.