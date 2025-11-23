

* they need to be familiar with comparison operators. Need to understand the expression of a comparison operation is boolean value.
* Then introduce if, elif, else statements. if and elif have condition, else does not.

* [2. Conditions in Python](#2-conditions-in-python)
  * [2.1 Comparison operators](#21-comparison-operators)
  * [2.1. What are Conditions?](#21-what-are-conditions)
  * [2.2. Using if Statements](#22-using-if-statements)
  * [2.3. else and elif](#23-else-and-elif)
  * [2.4. Comparing Values](#24-comparing-values)

# 2. Conditions in Python

## 2.1 Comparison operators

Result of a comparison is either `True` or `False`.
* `==`: equal to
* `!=`: not equal to
* `>`: greater than
* `<`: less than
* `>=`: greater than or equal to
* `<=`: less than or equal to

Example:
```python
x = 5
y = 10
print(x == y)  # False
print(x != y)  # True
print(x < y)   # True
print(x <= y)  # True
print(x > y)   # False
print(x >= y)  # False
```
### 🎯 Fun Exercises
* Change the values of `x` and `y` in the example above. Try to guess the output before running. Example values: 
  * x = 20, y = 15
  * x = 7, y = 7
  * x = 1.5, y = 2.5
  * x = "a", y = "b"

## 2.2 Logical Operators
* Logical operators help combine multiple conditions.
* `and`: True if both conditions are true.
* `or`: True if at least one condition is true.
* `not`: Inverts the truth value of a condition.

```python

day = "Sunday"
if day == "saturday" or day == "sunday":
    print("It's the weekend!")
else:
    print("It's school day.")



```

## 2.2. `if` Conditions

* Conditions help your program make decisions.
* They let your code do different things depending on whether something is true or false.

For example:
```python
if True:
    print("This will always print!")
    
if False:
    print("This will never print!")
```

* Now instead of `True` or `False`, we will use comparisons.

```python
x = 5
y = 10

if x == y:
    print("x is equal to y")

if x != y:
    print("x is not equal to y")
```

### 🎯 Fun Exercises
* Create a program that checks if a number is less than 0 and prints "Negative number" if true.
* A person is adult if they are 18 or older. Write a program that checks if a person's age is 18 or older and prints "Adult" if true.

---

## 2.3. else and elif

* `else` lets you run code if the condition is `false`.
* `elif` (else if) lets you check another condition.

Example:
```python
age = 10
if age > 13:
    print("Teenager")
elif age > 8:
    print("Older kid")
else:
    print("Young kid")
```

### 🧐 Checkpoint
* What is the difference between `elif` and `else`?
* How many `elif` statements can you use in a single `if` block?

### 🎯 Fun Exercises
* Write a program that checks if a number is positive, negative, or zero using `if`, `elif`, and `else`.
* Write a program that checks if a string starts with the letter "P" and prints "Starts with P!" if true, or "Does not start with P!" otherwise.

---

## 2.4. Comparing Values

* Conditions often involve comparing values using comparison operators:
  * `==`: equal to
  * `!=`: not equal to
  * `>`: greater than
  * `<`: less than
  * `>=`: greater than or equal to
  * `<=`: less than or equal to



### 🧐 Checkpoint
* What does the `==` operator do?
* What is the difference between `=` and `==` in Python?

### 🎯 Fun Exercises
* Write a program that checks if two strings are the same.
* Write a program that checks if a number is divisible by both 3 and 5.
