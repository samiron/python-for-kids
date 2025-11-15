# Table of Contents

- [Table of Contents](#table-of-contents)
- [2. Conditions in Python](#2-conditions-in-python)
  - [2.1. What are Conditions?](#21-what-are-conditions)
  - [2.2. Using if Statements](#22-using-if-statements)
  - [2.3. else and elif](#23-else-and-elif)
  - [2.4. Comparing Values](#24-comparing-values)

# 2. Conditions in Python

## 2.1. What are Conditions?

* Conditions help your program make decisions.
* They let your code do different things depending on whether something is true or false.

For example:
```python
if True:
    print("This will always print!")
```

### 🧐 Checkpoint Questions
* What is a condition in Python?
* What happens if the condition is `False` in the example above?

### 🎯 Fun Exercises
* Write a condition that checks if 5 is greater than 3 and prints "5 is greater!".
* Write a condition that checks if 10 is less than 2 and prints "This won't print!".

---

## 2.2. Using if Statements

* The `if` statement checks if something is true.
* If it is, the code inside runs.

Example:
```python
age = 10
if age > 8:
    print("You are older than 8!")
```
* The code inside the `if` block is indented (moved to the right).

### 🧐 Checkpoint Questions
* What happens if the condition is false?
* Why is indentation important in Python?

### 🎯 Fun Exercises
* Write an `if` statement that checks if a number is even (Hint: Use the modulus operator `%`).
* Write an `if` statement that checks if a string contains the letter "a" (Hint: Use the `in` keyword).

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

### 🧐 Checkpoint Questions
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

Example:
```python
x = 5
y = 10
print(x == y)  # False
print(x != y)  # True
print(x < y)   # True
print(x > y)   # False
```

### 🧐 Checkpoint Questions
* What does the `==` operator do?
* What is the difference between `=` and `==` in Python?

### 🎯 Fun Exercises
* Write a program that checks if two strings are the same.
* Write a program that checks if a number is divisible by both 3 and 5.
