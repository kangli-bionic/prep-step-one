# Introduction to Programming II

## Introduction to Methods

<iframe src="https://player.vimeo.com/video/206674799?rel=0&autoplay=1" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>


## The Elements of a Method

Let's dissect one of the examples from the previous chapter:

```ruby
9.lcm(3)
```

`9` is the **receiver** of the method `lcm`; it is the object upon which the
method is called. By using a receiver in conjunction with the `.` syntax, we
_invoke_ or _call_ the method. **Method invocation** is a call to the Ruby
interpreter to execute the method.

`3` is the method's **argument** or input. The argument `3` is _passed to_ the
method `lcm`. Parentheses enclose arguments; commas separate multiple arguments.
A method always expects a certain number of arguments. If a method is invoked
with the wrong number of arguments, the Ruby interpreter will throw an error.
`3.odd?(1)` yields this error message: `wrong number of arguments (given 1,
expected 0)`.

When we run `9.lcm(3)`, the shell prints `=> 9`. The value following `=> ` is
the method's **return value** or output. `9.lcm(3)` evaluates to 9. Altogether,
we _invoke_ the `lcm` method on the _receiver_ `9` with the  _argument_ `3`,
_returning_ `9`.


## Method Definition

<iframe src="https://player.vimeo.com/video/206675182?rel=0" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>

You've learned that methods are the "verbs" of Ruby. More specifically, a method
is a group of expressions that returns a value. A method organizes code into a
**subroutine**, a set of instructions that performs a specific operation.

**Method definition** assigns a subroutine to a name that can be invoked later. So how do you define a
method in Ruby? Let's define a method called `add_two_numbers` that, well, adds
two numbers:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/8?lite=true"></iframe>

One defines a method by preceding the method's name with the keyword `def`.
Method names conform to the same conventions and rules as variable names:

* They should be in snake case.
* They cannot have special characters.
* They cannot be a keyword.

`num_one` and `num_two` are the method's **parameters**. Parameters are
variables declared upon method definition that represent the arguments passed in
upon invocation. A method that's invoked with zero arguments would have zero
parameters. Method definition ends in `end`. The code between the `def`
statement and `end` is the method body. The **method body** is the subroutine that
the method definition encapsulates.

Defining a method does not invoke it, i.e., it does not instruct the Ruby
interpreter to execute the code inside the method's body. One invokes custom
methods by appending the arguments to the method's name:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/9?lite=true"></iframe>

Note that the return value is `3`. The Ruby interpreter assigns `1` to `num_one`
and `2` to `num_two`. The order of arguments is important. Arguments are
assigned to parameters in matching order. The interpreter adds the arguments as
the method's body instructs and returns the result.


## Returning from a Method

<iframe src="https://player.vimeo.com/video/206675535?rel=0" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>

The result of the last line of a method is implicitly returned. One can
explicitly return the line's result with the `return` keyword:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/69?lite=true"></iframe>

When the Ruby interpreter encounters an explicit return statement, it
immediately returns the result of that statement. It would be pointless to
execute subsequent code because the method's output has already been declared.

Try running `whacky_returns`:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/11?lite=true"></iframe>

`whacky_returns(1,2)` returns `3`. Because `whacky_returns` explicitly returns
`num_one + num_two` in the first line, it is functionally equivalent to
`add_two_numbers`. The two lines following `return num_one + num_two` are
**unreachable code**, code that can never be executed.


## Helper Methods

One can assign a method's return value to a variable or use it directly in an expression:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/76?lite=true"></iframe>

Once you've defined one method, you may also invoke it from the body of another:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/7?lite=true"></iframe>

`howdy` is a **helper method**, one that helps another method perform its task
by managing a subtask. For tasks less trivial than returning `"Howdy,
partner!"`, defining a group of helper methods that each manage one specific
subtask is clearer and less error-prone than defining one oversized method that
performs several duties.

Say we want to write a method, `num_prime_factors(num)`, that determines the
number of prime factors of its argument. This method might delegate to two
helper methods:

  1. `factors(num)`, which determines the factors of a number.
  2. `prime?(num)`, which determines whether a number is prime.

Though you're not yet capable of writing these methods, you will be after the
next chapter, in which you'll learn how to represent a list of data. The concept
of helper methods introduces two principles of software design: Separation of
Concerns and the Single Responsibility Principle. Separation of Concerns
prescribes separating a program into distinct sections that each address a
specific concern. The Single Responsibility Principle prescribes that each section
should entirely encapsulate the functionality for which it is responsible.
Modular, encapsulated code is easier to debug and is more readable and
recyclable.


## Practice Writing Methods

<iframe frameborder="0" width="100%" height="650" src="https://repl.it/GZGr/766?lite=true"></iframe


## Introduction to Arrays

A **data structure** is a format for organizing and storing data. Data
structures allow one to represent, access, and manipulate a collection of data.
A classic example of a data structure is the **array**, an ordered,
zero-indexed collection of objects.


## Array Declaration

In Ruby one declares an array with square brackets. `[]` is an empty array,
i.e., an array of length zero. One can store items in an array by separating
them with commas and enclosing them in square brackets. Any object (strings,
numbers, booleans, etc.) or combination of objects (including other arrays) can
be stored in an array.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/33?lite=true"></iframe>

Although Ruby permits heterogeneous arrays (those with different data types
inside them), it's generally preferable to maintain a single data type
throughout the array, ensuring predictability when accessing or manipulating the
array. An array that includes another array is called a **nested** or
**two-dimensional** array.


## Array Access

<iframe src="https://player.vimeo.com/video/206628011?rel=0" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>

One can access individual items in an array by appending to the array another
set of square brackets enclosing the desired index. `[]` is a method that can
use a special syntax. Try accessing array elements for yourself!

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/23?lite=true"></iframe>

Arrays are zero-indexed, i.e., the first element of the array is at the zeroth
index. In the above example, the string `"Robb"` is the first element and
therefore, the zeroth index. The second element of the array is at the first
index. `"Sansa"`, the second element, is at the first index.

One can also access array elements using negative indices. The last element of
the array is at the -1 index, the penultimate is at -2, etc. With negative
indices, you essentially start at the end of the array and work your way
backward.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/24?lite=true"></iframe>

One can access multiple elements in an array by using ranges instead of single
indices. Doing so returns another array.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/25?lite=true"></iframe>

`0..2` is a range object, another data structure. The two dots indicate that the
range is inclusive, i.e., the range comprises all integers from `0` to `2`,
including `2`. Three dots indicate an exclusive range: `0...11` is equivalent to
`0..10`. One can also declare a range of characters (e.g., `"a".."c"`,
`"A"..."D"`). One can type convert a range to an array using the `to_a` method:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/26?lite=true"></iframe>

Although the range `0...-1` in `got_characters[0...-1]` is technically empty,
when using a range in array access, -1 is equivalent to the array's length minus
one.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/27?lite=true"></iframe>

Ruby provides idiomatic methods for accessing the first and last elements of
arrays:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/28?lite=true"></iframe>


## Array Assignment

Once you've accessed elements in an array, you can reassign them to new values.
The assignment of array elements uses the same syntax as variable assignment.
If you're feeling blasphemous, you can make your array of Game of Thrones characters
include characters from another television show:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/29?lite=true"></iframe>

You can even assign elements to valueless array indices:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/71?lite=true"></iframe>

Note that assigning `"Morty"` to
`blasphemous_characters[blasphemous_characters.length]` added an element to the
end of the array (to an index that didn't have a value previously), thereby
increasing the array's length by one.


## Array Concatenation

Ruby provides two ways to concatenate arrays, i.e., to join them without nesting
(placing one array inside another). The `concat` method does what its name
suggests. Note that it modifies the original array.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/31?lite=true"></iframe>

The second method for concatenation is the addition operator (`+`). The addition
operator, however, does not modify the arrays to its left or right. One can
reassign the variable for the left array to its concatenated value.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/32?lite=true"></iframe>


## `push`, `pop`, `unshift`, and `shift`

<iframe src="https://player.vimeo.com/video/182440643?rel=0" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>

Four crucial array methods allow one to add and remove elements from the front
or back of an array. `push` adds an element to the end of an array, while `pop`
removes an element from the end of the array. `push` takes an argument (the
element to be added) and returns the modified array. `pop` takes no argument and
returns the element removed. Both methods modify the original array.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/39?lite=true"></iframe>

The shovel operator (`<<`) is functionally equivalent to `push`, but it allows
for the simpler syntax typical of operators. Note that `<<` does not concatenate.
Shoveling one array into another creates a nested array:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/40?lite=true"></iframe>

To perform actions similar to `push` and `pop` except for the front of the array
rather than the end, you can use the methods `unshift` and `shift`. Both modify
the original array.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/41?lite=true"></iframe>


## `join`

The `join` method type converts an array to a string. As its name suggests, it
joins every element in the array, each of which is implicitly converted to a
string. `join` takes an optional argument: the separator. The separator is a
string that the method splices between every element in the joined array. By
default, there is no separator. The `join` method does not modify the original
array.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/38?lite=true"></iframe>


## Other Useful Array Methods

Below are some array methods you may find useful for problem solving. There's no
need to memorize. You'll learn by putting these methods into practice.

You've already seen `length` in action. It returns the number of elements in the array.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/34?lite=true"></iframe>

`sort` sorts an array alphabetically or numerically. It requires that the array
be comprised entirely of numbers or strings. Otherwise the
interpreter won't know how to compare elements! Like many array methods, sort
has a counterpart that modifies the original array: `sort!`. A bang (`!`)
typically denotes methods that modify their receiver, so-called "dangerous"
methods.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/35?lite=true"></iframe>

`reverse` reverses the order of an array. `reverse` has a dangerous version:
`reverse!`.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/36?lite=true"></iframe>

`include?` returns a boolean value indicating whether its argument is
included in the array.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/37?lite=true"></iframe>


## Introduction to Strings

Our original definition of a string was "A sequence of characters enclosed in
quotation marks; Ruby's representation of text." Strings and arrays have much in
common. Both are sequences that can be accessed and manipulated, often using the
same methods. It's useful to think of strings as arrays of one-character
strings, though `["c", "a", "t"]` and `"cat"` are not technically equivalent.


## String Access, Assignment, and Concatenation

<iframe src="https://player.vimeo.com/video/208762281?rel=0" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>

Like arrays, strings use the bracket method for access. Each character
corresponds to an index. Strings are zero-indexed like arrays. The only
difference between array access and string access is that the `first` and `last`
methods are unavailable to strings.  

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/43?lite=true"></iframe>

<iframe src="https://player.vimeo.com/video/208762462?rel=0" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>

String assignment uses the same syntax as array assignment.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/44?lite=true"></iframe>

<iframe src="https://player.vimeo.com/video/208762656?rel=0" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>

As you'd probably guess, one concatenates strings similarly to arrays. The only
difference is that the shovel operator (`<<`) also concatenates strings. While
shoveling one array into another causes nestedness, strings cannot be nested; `<<`
therefore merely concatenates strings.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/78?lite=true"></iframe>

It's also sometimes useful to multiply strings using the `*` operator, which
functions as you'd expect:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/46?lite=true"></iframe>


## `split`

The `split` method is the opposite of `join`. While `join` combines the elements
of an array into a string, `split` divides a string into an array. Like `join`,
`split` takes an optional argument: the delimiter. The delimiter is a string
along which `split` divides the receiver string. Whatever string you use as the
delimiter will be omitted from the returned array. By default, the delimiter is
an empty space (`' '`). The `split` method does not modify the original string.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/42?lite=true"></iframe>


## Case Manipulation

Strings feature several methods for manipulating case. The most common are
`downcase` and `upcase`. `downcase` replaces all uppercase letters with their
lowercase counterparts, and `upcase` replaces all lowercase letters with their
uppercase counterparts. Both methods do not modify the original string but have
dangerous versions.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/48?lite=true"></iframe>


## Other Useful String Methods

Strings share several other methods with arrays, such as:
* `length` - returns the number of characters in a string;
* `reverse` - reverses the order of the string and returns the result (it does not modify its receiver);
* `reverse!` - the same as `reverse` except it modifies its receiver;
* `include?` - returns a boolean (`true` or `false`) indicating whether its argument is included in the string.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/47?lite=true"></iframe>


## Use Data Structures in Methods

<iframe frameborder="0" width="100%" height="650" src="https://repl.it/GZGr/709?lite=true"></iframe>
