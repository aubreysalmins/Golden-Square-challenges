TODO Method Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.


2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

todo_finder(text)

text will be a string 
todo_finder will return a boolean

no side-effects. 

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# 1
todo_finder("")
=> fail "No text given."

# 2
todo_finder("here is a string that contains #TODO")
=> true

# 3
todo_finder("here is a string that almost contains TODO")
=> false

# 4
todo_finder("another almost string with #TOD")
=> false

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.