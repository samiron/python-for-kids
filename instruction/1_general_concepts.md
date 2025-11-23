# Table of Contents

- [1. General Concepts](#1-general-concepts)
  - [1.1. Printing Values in Python](#11-printing-values-in-python)
  - [1.2. Using Functions](#12-using-functions)
  - [1.3. Using even more functions](#13-using-even-more-functions)
  - [1.4. Variables](#14-variables)
  - [1.5. Printing with variables](#15-printing-with-variables)
  - [1.6. Taking input from the user](#16-taking-input-from-the-user)
  - [1.7. Comments in Python](#17-comments-in-python)


# 1. General Concepts

## 1.1. Printing Values in Python

### Printing Text (Strings)

To display something on the screen in Python, we use the `print` function. For example:
```python
print("Hello, Python!")
```
* `print`: a function that displays information.
* "Hello, Python!": a piece of text, also called a "string". In programming, we use either double quotes "" or single quotes '' to represent strings.
* Parentheses `()` are used to call a function.

### Printing Numbers
```python
print(42)           # prints an integer
print(-7)           # prints a negative integer
print(1.5)          # prints a float (decimal number)
print(-10.67)       # prints a negative float
```
* The `print` function can also display numbers.
* 42, -7 are integers (whole numbers).
* 1.5, -10.67 are floats (numbers with decimals).

### Printing Results of Math Operations
```python
print(2 + 3)        # addition
print(5 - 2)        # subtraction
print(4 * 3)        # multiplication
print(8 / 2)        # division
print(2 ** 3)       # exponentiation (power)
print(5 // 2)       # floor division (quotient without remainder)
print(5 % 2)        # modulus (remainder)
```
* We can use `print` to show the result of math operations.
* Operators: `+` (add), `-` (subtract), `*` (multiply), `/` (divide), `**` (power), `//` (floor division), `%` (remainder).

### Print Booleans
```python
print(True)         # prints the boolean value True
print(False)        # prints the boolean value False
```
* Booleans represent truth values: `True` and `False`.


#### 🧐 Checkpoint Questions
* What types of values have we printed so far? (Answer: string, integer, float, boolean)
* What is the common name for all of these? (Answer: values)

#### 🎯 Fun Exercises
* Print the name of your favorite movie.
* Print your age or the year you were born.
* Print the result of 15 multiplied by 3 minus 7.
* Print the result of 10 raised to the power of 4.
* Print the result of 22 divided by 7.
* Print the result of 22 floor divided by 7.
* Print the remainder of 22 divided by 7.
* Can you print the result of 3 + 5 * 2? What is the result? (Hint: Remember the order of operations!)

---

## 1.2. Using Functions

* So far, we've used the `print` function to display values.
* In Python, a function is a reusable piece of code that does something with values.
* There are thousands of functions in Python!
* Let's learn about a couple more useful functions.

### Using Functions to Convert Values

```python
print(int(3.7))        # converts float to integer (truncates decimal)
print(round(3.7))      # rounds float to nearest integer
```

* `int()`: converts a float to an integer by removing the decimal part.
* `round()`: rounds a float to the nearest integer.
* You can call one function inside another. The inner function runs first, and its result is used by the outer function.

#### The Four Elements of a Function
1. Name (e.g., `round`)
2. Input(s) (also called arguments or parameters)
3. Purpose (what the function does)
4. Output (the result or return value)

#### 🧐 Checkpoint Questions
* Can you identify the 4 elements of a function using the `round(3.7)` example?
* What is the input and output of the `int(3.7)` function?
* What is the input and output of the `print(round(3.7))` function?

---

## 1.3. Using even more functions

* As mentioned above, python has thousands of built-in functions. But where do you find them all?
* There are three kinds of functions
  * Global functions: built into Python (like `print`, `int`, `round`)
  * Module functions: part of a module (a collection of related functions)
  * Instance methods: part of an object (we'll learn about objects later)
  * Your own function (We will learn about this later too!)
* Python documentation is a great place to find functions: https://docs.python.org/3/library/functions.html

### Global Functions
* Some useful global functions include:
  * `len()`: returns the length of a string or list
  * `min()`: returns the type of value
  * `max()`: converts a value to a string

```python
print(len("Hello"))        # prints 5
print(float(7))            # prints 7.0
print(int("10"))           # prints 10
print(min(3, 1, 4, 2))     # prints 1
print(max(3, 1, 4, 2))     # prints 4
print(pow(2, 3))           # prints 8
```

### Module functions
* Modules are collections of related functions and variables.
* You can use module functions by importing the module first. For example, the `math` module contains many useful math functions.
* Documentation of all functions in math module: https://docs.python.org/3/library/math.html#module-math
* Documentation of all modules in Python: https://docs.python.org/3/py-modindex.html

```python
import math
print(math.sqrt(25))       # prints the square root of 25
print(math.ceil(3.2))      # prints 4 (rounds up)
print(math.floor(3.7))     # prints 3 (rounds down)
```

### Instance Methods
* Instance methods are functions that belong to an object. For example, strings have methods that can be used to manipulate them.
* Documentation on string methods: https://docs.python.org/3/library/stdtypes.html#string-methods

```python
print("hello".upper())      # prints "HELLO"
print("WORLD".lower())      # prints "world"
print("  spaced  ".strip()) # prints "spaced" (removes whitespace)
```

#### 🧐 Checkpoint Questions
* Can you identify the 4 elements of a function using the `math.sqrt(25)` example?
* What is the input and output of the `len("Hello")` function?

#### 🎯 Fun Exercises
* Can you utilize a function from math module to print the value of pi?
* If you are familiar with LCM and GCD, can you find a way to print the LCM of 4, 12 and 15 using functions from the math module?
* Use `str.count` to print how many times the letter 'o' appears in the string "Hello, Python!". [Documentation](https://docs.python.org/3/library/stdtypes.html#str.count)
* Use `str.replace` to replace "Python" with "World" in the string "Hello, Python!" and print the result. [Documentation](https://docs.python.org/3/library/stdtypes.html#str.replace)
* Use `str.endswith` to check if the string "Hello, Python!" ends with an exclamation mark (!) and print the result (True/False). [Documentation](https://docs.python.org/3/library/stdtypes.html#str.endswith)
* Following string functions are also useful, try them out:
  * `str.isnumeric`
  * `str.isalpha`
  * `str.isupper`
  * `str.isdigit`
  * `str.split`
  * `str.join`

## 1.4 Variables
* Variables are used to store values so we can use them later.
* You can think of variables as labeled boxes that hold information.
* To create a variable, you give it a name and assign it a value using the equals sign `=`.
* We can print the value of a variable by using its name inside the `print` function.

```python
name = "Alice"          # string variable
print(name)             # Printing the string variable

my_age = 10             # integer variable
print(my_age)           # Printing the integer variable

height = 4.5            # float variable
print(height)           # Printing the float variable

is_student = True       # boolean variable
print(is_student)       # Printing the boolean variable
```

* We can also use variables in math operations.

```python
my_age = 10                         # integer variable
dad_age = 40                        # integer variable
age_difference = dad_age - my_age   # calculating age difference

print(age_difference)               # Printing the age difference
```

#### 🧐 Checkpoint Questions
* Why do we use variables in programming?
* How do you create a variable in Python?
* What is the difference between values and variables?

#### 🎯 Fun Exercises
* Create a variable called `favorite_color` and assign it your favorite color as a string. Then print the variable.
* Create two variables: `pizza_slices` (set it to 8) and `friends` (set it to 4). Calculate how many slices each friend gets by dividing `pizza_slices` by `friends`, store the result in a variable called `slices_per_friend`, and print it.
* Create two variables for the length and width of a rectangle (use any numbers you like). Calculate the area by multiplying length and width, store it in a variable called `area`, and print the result.
* Create a variable `price` (set it to 25) and another variable `discount` (set it to 5). Calculate the final price after discount by subtracting `discount` from `price`, and print the result.
* Create two variables `temperature_fahrenheit` (set it to 98.6) and `conversion_factor` (set it to 1.8). Calculate Celsius using the formula: `(temperature_fahrenheit - 32) / conversion_factor`. Store the result in a variable and print it.
* Challenge: Create variables for hours worked (40) and hourly rate (15). Calculate the weekly pay and print it. Then create a variable for tax rate (0.2, which is 20%) and calculate the pay after taxes. Print both the total pay and pay after taxes.


## 1.5 Printing with variables
* We can use variables inside the `print` function to display their values.
* When we use a variable in `print`, Python replaces the variable name with its value.

```python
name = "Alice"
print("Hello, " + name + "!")   # prints "Hello, Alice!"  
print(f"Hello, {name}!")        # prints "Hello, Alice!" using f-string
```
* In the first example, we use the `+` operator to concatenate (join) strings.
* In the second example, we use an f-string (formatted string) to embed the variable directly in the string.

#### 🧐 Checkpoint Questions
* What happens when you use a variable inside the `print` function?
* What is the difference between using `+` to concatenate strings and using an f-string?

#### 🎯 Fun Exercises
* Create a variable `city` and assign it the name of your favorite city. Use `print` to say "I love [city]!" using both concatenation and an f-string.
* Create variables `first_name` and `last_name`. Use `print` to display "My name is [first_name] [last_name]." using both methods.
* Create a variable `age` and assign it your age. Use `print` to say "I am [age] years old." using both concatenation and an f-string.

## 1.6 Taking input from the user
* We can take input from the user using the `input()` function.
* The `input()` function displays a prompt to the user and waits for them to type something and press Enter.
* The value entered by the user is returned as a string.
* We can store the input in a variable for later use.

```python
name = input("What is your name? ")   # prompt the user for their name
print(f"Hello, {name}!")               # greet the user using their name
```

* Sometimes we need to convert the input to a different type (like integer or float) since `input()` always returns a string.

```python
age = int(input("How old are you? "))   # prompt the user for their age
next_year_age = age + 1                  # calculate age next year
print(f"Next year, you will be {next_year_age} years old.")  # print the result
```
* In this example, we convert the input string to an integer using `int()`.

## 1.7 Comments in Python
* Comments are notes in the code that are ignored by Python when the program runs.
* They are used to explain what the code does or to leave reminders for yourself or others.
* In Python, comments start with the `#` symbol. Everything after `#` on that line is considered a comment.

Example:
```python
# This is a comment
print("Hello, World!")  # This prints a greeting message
```
