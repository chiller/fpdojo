Recap Exercises
---------------

Complete the definitions to implement mysum, that adds all the items in a list

```
mysum [] = 0
mysum xs = (head xs) + ...
```
a) `xs`

b) `tail xs`

c) `x:xs`

d) `potato`

Complete the definitions to implement myprod, that multiplies all the items in a list
```
myprod [] = 1
myprod ... = x * myprod xs
```
a) `x:xs`

b) `(x:[])`

c) `(x:xs)`

d) `[x:xs]`

Implement mymaximum to find the largest number in a list using the function `max` that returns the bigger of two numbers ( `max 1 2` is `2` )

```
mymaximum [x] = x
...
```
a) `mymaximum (x:xs) = max x (mymaximum xs)`

b) `mymaximum (x:xs) = mymaximum max x xs`

c) `mymaximum (x:xs) = mymaximum (max x xs)`

d) `mymaximum (x:xs) = max xs (mymaximum x)`

Implement a function sqr that takes a list and doubles all the elements in the list( actually returns a new list)

