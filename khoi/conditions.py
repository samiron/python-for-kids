def test1():
    x = "khoi"
    y = "KHOI"
    print(x == y) # False
    print(x != y) # True
    print(x < y) # True
    print(x <= y) # True
    print(x > y) # False
    print(x >= y) # False

# and table
# True and False = False
# False and False = False
# True and True = True
# False and True = False

# OR table
# True or False = True
# False or False = False
# True or True = True
#False or True = True
def test2():
    x = 5
    y = 10
    print(x < 10 and x > 20)
    print(x < 10 or y > 20)

# if it is sunday or saturday, print its weekend!
def dayofweek():
    day = input("what is the day of week today?")
    my_string = day.lower()
    if my_string == "sunday" or my_string == "saturday":
        print("It's weekend!")
    else:
        print("It's a weekday!")

dayofweek()
