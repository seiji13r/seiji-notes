#!/usr/bin/env python3

menu = "Hamburger", "Taco", "Salad", "Hot Dog"

print(menu)

for item in menu:
    print(item)

try:
    menu[1] = "sandwitch".title()
except Exception as e:
    print(getattr(e, 'message', repr(e)))
    print(getattr(e, 'message', str(e)))

new_menu = list(menu)
new_menu[1] = "sandwich".title()
new_menu[2] = "burrito".title()
menu = tuple(new_menu)

print(menu)

for item in menu:
    print(item)