# Programming

## Notes
---
```
  We provide 3 different variants of the same program (python, bash and js).
  Choose the language that you prefer and feel more comfortable, all of them have the same scope.
```

&nbsp;
## Task
---
Answer the following questions:

1. Which language(s) did you choose?
   - Python
   - bash
   - Js

2. What's the purpose of `method1`?
   - Only string input is valid (static type checking)
   - send (single) value to list or create list items by separating on <space>.
   - reverse the list items (for odd number of items, middle has same index for reversed)
   - return true if the reversed list item equals to its counterpart

  So, basically it checks for if a list can be "mirrored" along its items. I.e.
  True: ["anna"] ["anna" "king" "anna"] ["heart" "heart"] ["one" "two" "two" "one"]
  False: ["one" "two"] ["one" "two"] ["one" "two" "one" "two"]

3. What's the purpose of `method2`?
   - value1 !=< value2 (must be equal or smaller)
   - create a list of numbers starting at value1 and stopping at value2
   - In Python range would naturally stop at the last value before value2
   - add all odd numbers to the accumulated sum

  i.e. (1, 5) => 1 + 3 +5 => 9

4. What's the purpose of `method3`?
   - split strings on <space> and create a list of those items
   - check if both list are conatining the exact same items

  i.e. true: "apple pear banana" "pear banana apple"


### Personal Remark
---
- Eventhough not expected from a Python perspective, the logic is often easier understood in Js or even bash
- A good example is the for loop, which makes the iterator (i.e. i++) more descriptive
- Similar to Python with weak static type linting using typescript on top of Js would most likely make the intention of a function much more obvious
- This and many more short comings (non-compiled, no async) made my switch to Golang and I am currently happy with doing my scripting in it
- Golang offers a fantastic dependency system (similar terraform as written in Go) and is gaining a larger and larger foothold in the devops/infra space. Obviously with Kubernetes and many other toolings.
- I would be happy to demonstrate a few things. I.e. I've been using very successfully a Make-like build tool which offers centralized scripting repositories a lot more especially when it comes to local tasks and CI
- Bash is tricky to even keep in the list for its poorly readability and portability. So, probably more a necessity for maintaining legacy. I am calling those scripts through Golang sh.
- This would be possible with Python as well, but Go offers a very strong eco-system around cli building and can make even the sub-process/sh calls asyncronously. I.e. easily run ssh tasks across many nodes.
