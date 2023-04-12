Time Management Method Design Recipe

1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.


2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

time_reading = calculate_reading_time(text)

time_reading = integer representing minutes
text = string of words


3. Create Examples as Tests

# 1
calculate_reading_time("")
=> 0

# 2
calculate_reading_time("one word") 
=> 1

# 3
calculate_reading_time("two hundred words")
=> 1

# 4
calculate_reading_time("four hundred words")
=> 2

# 5
calculate_reading_time("2500 words")
=> 13

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.