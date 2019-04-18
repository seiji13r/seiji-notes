# My Python Question and Answers <!-- omit in toc -->

- [Check Python Keywords](#check-python-keywords)
- [Check Available Packages to import](#check-available-packages-to-import)
- [Print Python Zen](#print-python-zen)
- [Print all available builtin functions](#print-all-available-builtin-functions)
- [List all methods of a builtin](#list-all-methods-of-a-builtin)
- [Reverse a String](#reverse-a-string)
- [Display Declared/Existing Variables](#display-declaredexisting-variables)

## Check Python Keywords

`help('keywords')`

## Check Available Packages to import

`help('modules')`

## Print Python Zen

`import this`

## Print all available builtin functions

`dir(__builtins__)`

## List all methods of a builtin
```python
dir(list)
help(list.append)
```

## Reverse a String
```python
s = "Hello World, you are amazing"
s[::-1]
'gnizama era uoy ,dlroW olleH'
```

```javascript
s.split("").reverse().join("")
```

NOTES: try with decrementing for loop.

## Display Declared/Existing Variables

`dir()` This will return all the variables in the namespace