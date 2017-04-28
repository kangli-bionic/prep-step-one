# Introduction to Programming I

## What is Ruby?

As a programmer, your job is to take a problem and break it down into smaller problems
until you reach tasks simple enough to be comprehensible to a computer.

In this course, you'll use a programming language to communicate tasks to your
computer. A computer program is a series of instructions in a programming
language.

There are many programming languages, but we'll learn Ruby. Ruby is an elegant
programming language perfect for students who are beginning to code. It's also
powerful and expressive, which makes it a great choice for advanced programmers.
The following code snippet uses some of the most sophisticated syntax in the
language, but you can probably already guess what it does:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3c/1?lite=true"></iframe>


## Primitive Data Types

Before we can begin programming, which—at the most basic level—involves
manipulating data, we need to learn what kinds of data we can manipulate. All
programming languages have built-in primitive data types. __Primitive data
types__ are a programming language's fundamental building blocks. They are types
of **objects**, Ruby's representation of data. Objects are the nouns of Ruby.

Ruby has five primitive data types, but you'll only need to learn the following
four to pass the online challenge.

**Strings:** A string is a sequence of characters. Strings are denoted by enclosing double (`""`)
or single (`''`) quotation marks. `"dog"`, `"3 logs"`, and `"the brown dog
jumped over the 3 logs"` are all strings. Strings can be of any length. `""` is
an _empty string_ (a string of length zero). Remember to wrap strings in quotation
marks. Otherwise Ruby will misinterpret the code.

**Numbers:** In Ruby, we call any whole number—positive or negative (including 0)—an
_integer_. `9` and `-4` are both integers. Fractional numbers (with decimal
points) such as `3.1415` are called _floats_ or _floating point numbers_. Some
mathematical operations in Ruby function differently depending on whether the
number is a float or an integer. By the way, don't use include commas in
integers. Writing `4,000` instead of `4000` will confuse Ruby.

**Booleans:** There are only two boolean values: `true` and `false`. Booleans provide the core
logic of computer programs. `4 > 5` is `false`, and `4 < 5` is `true`. Note that
booleans are case sensitive. `true` is a boolean, `True` is not. And `"true"` is
a string, not a boolean.

**Nil:** Ruby represents nothingness with the keyword `nil`. Sometimes the absence of data is as
important as data itself.


## Your First Program

Ready to write your first Ruby program? In the Repl.it file below (the white top
section), you'll see we've written the code `puts "Hello, world"`. Type `puts
"Hello, world"` for yourself in the Repl.it shell (the dark blue bottom section)
and press enter.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/2?lite=true"></iframe>

If `Hello, world!` printed in your shell, then congratulations: you're already a
programmer! Now let's think like a programmer by investigating this code's
components and how they cooperate to make a program. A **program** is a sequence
of instructions that a computer executes to perform a specific task ( in this
case, printing `Hello, world`).

**Note:** Throughout this curriculum, please experiment with the code in the examples and
type and run your own code in the shell (the dark blue bottom section) to
practice and test your understanding of Ruby.


### `puts "Hello, world!"`

You've learned that the quotation marks enclosing `"Hello, world!"` denote a
string; however, you haven't learn what `puts` means. `puts` is not a number,
string, boolean or nil.

`puts` is not an object at all. Instead, `puts` is a _method_. We'll cover methods more
thoroughly in later chapters, but for now think of methods as performing an
action on an object. `puts` performs the action of printing the string `"Hello,
world"`.

You can use `puts` with an object of any data type. Try running these in the
shell:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/3?lite=true"></iframe>

`puts nil` prints nothing. Can you think of why?

You've already run five programs! Time for your first bug.


## Your First Bug

A **software bug** is an error or flaw in a computer program that causes an
incorrect or unintended result. Bugs provide the best learning opportunities in
software. A faulty understanding produces faulty code, and debugging that code
debugs one's coding knowledge.

Try running the code from the following file in the shell (the dark blue bottom section):

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/0?lite=true"></iframe>

The shell should print something like:

```ruby
undefined local variable or method 'hello' for main:Object
(repl):1:in '<main>'
```

Behold your first error! An **error** is a type of bug that stops your code from
running. It's a violation of the rules of the programming language. When the
**Ruby interpreter**--the program that parses and executes Ruby code--encounters
an error, it stops the code from running. The interpreter instead _throws an
error_ and prints the relevant error message.


### Error Messages

Error messages offer clues for debugging. When confronting an error, always
start by examining the error message. The above error message has two parts. The
first line is the **message** itself: `undefined local variable or method
'hello' for main:Object`. The second is the **stack trace**: `(repl):1:in
'<main>'`. The stack trace essentially lists locations from which the error
started. The stack trace is especially useful for debugging long, complicated
code spread across multiple files. For now, it's important to note that the
stack trace shows you the line number (`1` in this case) where the error
began.

Consider what the error message tells us about the source of the error. The Ruby
interpreter had trouble parsing `hello`. For the interpreter, this situation is
similar to when we used `puts` before learning what `puts` is. Because `hello`
doesn't belong to any of the Ruby data types (numbers, strings, booleans, nil),
the Ruby interpreter checks if `hello` is a defined method or variable (we'll
teach you about variables in the next chapter). It's neither a method nor a
variable, so the Ruby interpreter can't understand the code and throws an error.
We can debug our code by making `hello` a valid string. Type the code from the
file into your shell and press enter:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/1?lite=true"></iframe>

Though this bug may have been trivial to fix, it helped illuminate how the Ruby
interpreter parses our code.


## What is a Variable?

<iframe src="https://player.vimeo.com/video/181828680?rel=0" width="100%" height="400px" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" style="line-height: 1.6em;" rel="line-height: 1.6em;"></iframe>

A **variable** is a label that refers to a value stored in memory. Let’s explore
what that means:

```ruby
x = 5
```

The name of the variable (`x` in this example) is on the left side of `=`, and
its value (`5` in this case) is on the right. `=` is the **assignment
operator**. Here it _assigns_ the variable `x` to the value `5`. When you first
assign a variable to a value, you also _define_ that variable. A defined
variable has meaning in the program, e.g., `x` means `5`.

By assigning a variable to `5`, we indicate to the Ruby interpreter that the
integer `5` is worth storing in memory. The variable "stands in" for the value,
giving the programmer a convenient way to retrieve and manipulate data in more
complex problems. For the example below, remember we assigned the variable x
with a value of 5.

```ruby
x + 2
=> 7
puts x
5
=> nil
```

Any object can be assigned to a variable (e.g., `b = "dog"`). Variables can also
be reassigned (`a = b`). Run each of the following lines from the file (by
clicking _run__), and check out the result in the Repl.it shell.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/4?lite=true"></iframe>

Predict the new values of `a` and `b`. Type `a` in the shell and press enter. Do
the same for `b`.

```ruby
a
=> 7.5
b
=> true
```

When `b` is reassigned to `a`, `a` refers to `true`. The value of `b` therefore
also becomes `true`. The later reassignment of `a` to `7.5` does not affect the
value of `b`.


## Variable Naming

Rubyists follow a set of variable-naming conventions and rules:

* Variable names should be written in **snake case**, i.e., with all lowercase
letters and with underscores replacing spaces (e.g., `my_snake_case_variable`).
* Variable names cannot have special characters (e.g., `*`, `"`, `[`, `!`, `?`, `,`).
* Variable names cannot be one of the following Ruby keywords, which are reserved
for special purposes:

```ruby
__FILE__  and    def       end     in      or      self   unless
__LINE__  begin  defined?  ensure  module  redo    super  until
BEGIN     break  do        false   next    rescue  then   when
END       case   else      for     nil     retry   true   while
alias     class  elsif     if      not     return  undef  yield
```

Give variables descriptive names. A variable named `car_model` that refers to
the value `"Prius"` is more readable than `p` or `string`. Your code should be
as comprehensible as possible.


## A Comment on Comments

Despite your best efforts to maintain good code style, your programs may become
difficult to decipher as they grow more complex. A **comment** is a note ignored
by the interpreter. Comments clarify code for human readers (including you!).
Many code snippets in subsequent chapters will have comments.

In Ruby, anything following a `#` is a comment. An enclosing `=begin` and `=end`
create multiline comments.

```ruby
# my favorite dessert!
fave_dessert = "pie"

=begin
Guess how many pies I can eat in one sitting.
You ready?
=end

num_pies = 3.14 # :)
```


## Arithmetic Operators

We can use standard arithmetic operators when working with numbers.

* `+` (addition)
* `-` (subtraction)
* `*` (multiplication)
* `/` (division)
* `**` (exponentiation)
* `%` (modulo)

All of these operators probably look familiar except for one. The modulo
operator (%) returns the remainder of division (we’ll explain this further
later). For now, run these one line at a time in the Repl.it shell.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/14?lite=true"></iframe>

Ruby evaluates certain operations with higher precedence, as per the
mathematical order of operations, where parentheticals are executed first, then
exponentiation, then multiplication and division, then addition and subtraction.
`4 - 2 * 5` returns `-6` because Ruby evaluates `2 * 5` before `4 - 2`. To give
an operation highest precedence, wrap it in parentheses.

If you look back at the shell, you'll notice that the division operator probably
behaved differently than you would expect. After dividing 9 by 2, the result was
4 instead of 4.5. When we divide two integers, Ruby does not return a fractional
number. It instead rounds down to an integer. Most programming languages work
similarly. There is some sense to this behavior. If a donut costs $2, and you
have $9, how many donuts can you buy? Assuming that the donut shop won't sell
you half a donut, you can buy at most 4 donuts.

If you want a fractional answer, you'll want to use floats. Test the following in the shell. (The comments indicate the return value.)

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/15?lite=true"></iframe>

When one or both operands are floats, the operation returns a float (a
fractional number with a decimal point), even when the operands divide evenly.
The interpreter does not round down a float.

One last interesting operator is the modulo operator (`%`). The modulo operator (`%`)
returns the remainder of division. This is often useful when determining whether
one number evenly divides another. The modulo operator accepts both integers and
floats and follows the same rules as the division operator when determining the
data type of its output. Try these examples:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/16?lite=true"></iframe>


## Numerical Methods

Ruby provides many numerical methods besides the arithmetic operators. You’ll
learn more about methods in the next chapter, but let’s explore some common
numerical methods first

You'll typically call a method by adding a period and the method name after an
object (the primitive data types you've been working with). When you call a
method, use the format _object.method_. To the left of the dot is the noun; to
the right of the dot is the verb. In the example below, we'll call the `abs`
method to return a number's absolute value:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/17?lite=true"></iframe>

Let's try another method. The `even?` and `odd?` methods check whether an
integer is even or odd. Methods that return booleans (`true` and `false`)
typically end in a `?`.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/18?lite=true"></iframe>


### Type Conversion

Other common numerical methods include the `floor` and `ceil` methods, which
round a float down or up. The `round` method rounds a float to the nearest
integer. `round` rounds up if the float is exactly between two integers.

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/19?lite=true"></iframe>

Rounding a float with the `floor` and `ceil` methods performs what's known as a **type
conversion**; it converts an object of one data type (float) to an object of
another data type (integer).

The `to_i` method is equivalent to `floor`. It rounds down a float and converts
it to an integer (`to_i` stands for "to integer"). Conversely, the `to_f` method
converts an integer to a float. What method do you think converts an object to
a string?

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/20?lite=true"></iframe>

Just as you can convert a float or integer to a string, you can also convert a
string to a float or integer (provided it's a string of a number):

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/21?lite=true"></iframe>


### LCM and GCD

Although you could determine the least common multiple and greatest common
divisor of two integers using methods you've already learned, Ruby provides
**convenience methods** (`lcm` and `gcd`) to make your task easier. The least
common multiple (LCM) of two numbers is the smallest nonzero number that is a
multiple of both. The greatest common divisor (GCD) is the largest positive
integer that is a divisor of both numbers. For example, the GCD of 8 and 12 is 4.


Convenience methods are inessential methods that easily complete tasks that
would otherwise require complex or verbose implementations.

Because finding the LCM or GCD requires two numbers by definition, we cannot use
the same syntax. `9.lcm` makes no sense. Instead wrap the second number in
parentheses and append it to the method:

<iframe frameborder="0" width="100%" height="500px" src="https://repl.it/GD3i/22?lite=true"></iframe>

The above syntax might seem mysterious. Next we'll investigate how it works and
adopt a new set of terms related to methods.
Oh yeah
