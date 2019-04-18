# Python NOTES <!-- omit in toc -->

- [Expressions and Statements](#expressions-and-statements)
- [Operator Precedence (PENDAS)](#operator-precedence-pendas)
- [Variables Naming convention](#variables-naming-convention)
- [Python Data Types](#python-data-types)
  - [String Methods](#string-methods)
- [Valid String Operations](#valid-string-operations)
  - [Numbers](#numbers)
    - [Integers](#integers)
    - [Floats](#floats)
  - [Lists](#lists)
    - [Methods](#methods)
  - [Notes](#notes)
    - [list.sort vs sorted(list)](#listsort-vs-sortedlist)
    - [Looping over a list.](#looping-over-a-list)
    - [builtin methods applicable to lists](#builtin-methods-applicable-to-lists)
    - [List Comprehension](#list-comprehension)
- [Slices](#slices)

# Expressions and Statements

An expression is a combination of values, variables, and operators.
A statement is a unit of code that has an effect, like creating a variable or displaying a value.

# Operator Precedence (PENDAS)

* **P**arentheses
* **E**xponentiation
* **M**ultiplication and **D**ivision
* **A**ddition and **S**ubtraction


# Variables Naming convention

Variable Names:
1. Cannot start with number.
2. Cannot contain spaces.
3. Cannot be a Python keyword.

# Python Data Types

* Boolean
* Strings
* Numbers
  * Integers
* Lists
* Tuples
* Dictionaries

## String Methods
```python

# Get the List of Methods
dir(str)
# Print a vertical list of Methods
print("\n".join(dir(str)))

# Switch Case
title
capitalize
lower
upper
swapcase

# Remove White Spaces
rstrip
lstrip
strip

casefold
center
encode
expandtabs

count
find
format
format_map

index
isalnum
isalpha
isascii
isdecimal
isdigit
isidentifier
islower
isnumeric
isprintable
isspace
istitle
isupper

endswith
startswith

join
ljust
lower
lstrip
maketrans
partition
replace
rfind
rindex
rjust
rpartition
rsplit
rstrip
split
splitlines
strip
swapcase
title
translate
upper
zfill

```

# Valid String Operations

* Concatenation [+]
* Repetition [*]

## Numbers

### Integers

### Floats

## Lists

### Methods
insert
append

extend

clear
copy
count
index
pop
remove
reverse
sort

## Notes

### list.sort vs sorted(list)

list.sort: this will sort and permanently change the list
sorted(list): this will temporarily change the list.

### Looping over a list.

```python
for item in list_of_items:
    print(item)
```

### builtin methods applicable to lists

min(list)
max(list)
sum(list)
len(list)

sorted(list)

### List Comprehension
```python
ml = [x for x in range(0,11,2)]

squares = [x**2 for x in range(1,11)]

```
# Slices

Slices work in Strings, List and Tuples
```python
ml = [0, 1, 2, 3, 4, 5]
ml[start:end:step]

last_element_index = end-1

```
