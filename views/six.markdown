<h1>Operators, Conditionals and Iterations</h1>
<small class="article-source">
  Week 6 - Sep 20, 2012
</small>

### Discussion

Discuss the following activities:

* After a great game of Monopoly, how do you put the game away?
* When opening a new deck of face cards to play a game, what is the first thing you do and how?
* What do you do when you channel surf?

What is the pattern here?

### Operators

**What is an operator?** An operator in programming is basically a way to perform some sort of operation against data. 

For example, `1 + 2 == 3`. The operator `+` with the operand of `2` is being assigned to <code>1</code>

<img src="/img/operators.png" align="top" />

<blockquote class="tip">Discuss: Why do we use <code>==</code> instead of <code>=</code> in this example?</blockquote>

#### Arithmetic Operators

An **arithmetic operator** is an operator that is intended to modify an operand.

Here are a list of commonly used **Arithmetic** operators:

<table class="table table-condensed table-bordered">
  <tr>
    <td style="text-align: center; width: 50px;">+</td>
    <td>Addition - Adds values on either side of the operator</td>
  </tr>
  <tr>
    <td style="text-align: center;">-</td>
    <td>Subtraction - Subtracts right hand operand from left hand operand</td>
  </tr>
  <tr>
    <td style="text-align: center;">*</td>
    <td>Multiplication - Multiplies values on either side of the operator</td>
  </tr>
  <tr>
    <td style="text-align: center;">/</td>
    <td>Division - Divides left hand operand by right hand operand</td>
  </tr>
  <tr>
    <td style="text-align: center;">%</td>
    <td>Modulus - Divides left hand operand by right hand operand and returns remainder</td>
  </tr>
  <tr>
    <td style="text-align: center;">**</td>
    <td>Exponent - Performs exponential (power) calculation on operators</td>
  </tr>
</table>

### Exercise

Play around with the **arithmetic operators** in an IRB console until you feel comfortable with them.

<script src="https://gist.github.com/3745922.js?file=operators.rb"></script>

<blockquote class="tip">
  <span style="float: right;">hint: try using floats</span>
  Discuss: Why doesn't <code>10/3</code> return <code>3.3333</code>?
</blockquote>

#### Comparison Operators

A **comparison operator** is an operator that is intended to compare the operands.

Here are a list of commonly used **Comparison** operators:

<table class="table table-condensed table-bordered">
  <tr>
    <td style="text-align: center; width: 50px;">==</td>
    <td>Checks if the value of two operands are equal or not, if yes then condition becomes true.</td>
  </tr>
  <tr>
    <td style="text-align: center;">!=</td>
    <td>Checks if the value of two operands are equal or not, if values are not equal then condition becomes true.</td>
  </tr>
  <tr>
    <td style="text-align: center;">></td>
    <td>Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true.</td>
  </tr>
  <tr>
    <td style="text-align: center;"><</td>
    <td>Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true.</td>
  </tr>
  <tr>
    <td style="text-align: center;">>=</td>
    <td>Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true.</td>
  </tr>
  <tr>
    <td style="text-align: center;"><=</td>
    <td>Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true.</td>
  </tr>
</table>

### Exercise

Play around with the **comparison operators** in an IRB console until you feel comfortable with them.

<script src="https://gist.github.com/3746006.js?file=comparison_operators.rb"></script>

<blockquote class="tip">
  <span style="float: right;">hint: try using floats</span>
  Discuss: Why doesn't <code>10/3</code> return <code>3.3333</code>?
</blockquote>

### Conditionals

Conditionals are nothing more than checking to see if something is true or false, then acting on the results of that.

For example, if someone offered me $1 to run around with my shirt off yelling "I'm a pretty little girl!" I wouldn't do it. However, if someone offered $1,000 to do it, I would more than likely go for it.

For the following examples, let's create a method that we can use:

<script src="https://gist.github.com/3746099.js?file=run_around_methods.rb"></script>

---

#### if

`if` if the first and most important conditional you can use. It is the backbone of programming. `if` always accompanies some sort of action. Here's our example in code:

<script src="https://gist.github.com/3746105.js?file=if_1.rb"></script>

As you can see, if the variable `offer` is equal to or greater than 1000, the method `eric_runs_around` will be called.

---

#### else

`else` is most often used following an `if` conditional. What it does is tell what action is supposed to happen if the `if` conditional fails. Here's our example:

<script src="https://gist.github.com/3746114.js?file=else_1.rb"></script>

So using this example, if the variable `offer` is equal to or greater than 1000, the method `eric_runs_around` will be called. If it is less than 1000, the method `eric_says_no` is called.

---

#### elsif

`elsif` is ruby's way of saying "else if". It always follows an `if` conditional and tells which action is supposed to happen if the prior conditionals failed and this conditional is true. Example:

<script src="https://gist.github.com/3746126.js?file=elsif_1.rb"></script>

In this example, if we set offer to -1, neither method will be called and it will print out the message **"Offer can't be negative, silly!"**. If it is not less than 0, it will continue on to the `else` which is a *catch-all* conditional operator.

<blockquote class="tip">Discuss: What are some real life examples of using conditionals?</blockquote>

---

#### case/when

Sometimes programming code can become repetitive and unreadable. Here's an example:

<script src="https://gist.github.com/3746148.js?file=case_when_1.rb"></script>

A shortcut has been provided in the form of a **Case Operator**, more commonly known as a *Switch*.

Here's the same code using the *case* operator:

<script src="https://gist.github.com/3746170.js?file=case_when_2.rb"></script>

As you can see, it's MUCH more readable, and readability is VERY important as a programmer. If you don't write readable code, it makes it much harder to manage your code and other programmers won't like you.

<blockquote class="tip">Discuss: Can you use <strong>case/when</strong> operators when not comparing with <code>==</code> ?</blockquote>

Here's our example above using a **case/when** operator:

<script src="https://gist.github.com/3746303.js?file=case_when_3"></script>

### Iterations

An iteration is a process that repeats itself. 

<blockquote class="tip">Iterations: What are some real life examples of iterations?</blockquote>

A loop is another word for iteration. It is used often when referring to certain iterations (as shown below).

---

#### for loop

The most commonly used iteration in programming is the `for` loop. It repeats a process for a specified number of times. There are many ways we can use the `for` loop.

Here are some examples:

<script src="https://gist.github.com/3746330.js?file=for_loop_1.rb"></script>

Something really cool about loops is that you can put loops inside of loops. We call this *nested* loops. Let's say we want to create a multiplication table:

<script src="https://gist.github.com/3746360.js?file=for_loop_2.rb"></script>

---

#### while

A *while* iteration is also a loop which will repeat until a condition is met. For example, when you sit down to eat dinner, you usually eat until you are full (or satisfied). You start by listening to your body say "I'm hungry". You take a bite of food. Then you see if your body is still hungry. If so, you take a bite of food.. and so on. Here's what that example would look like in a **while loop**:

<script src="https://gist.github.com/3746411.js?file=while_loop_1.rb"></script>

Notice that while we are in the *while loop* we are adding `1` to the variable `bites`. Each time the loop iterates, the `bites` variable increases by 1. Once the number of bites is equal to or exceeds 5, we tell the `hungry` variable that we are not hungry. Once that is set, the next time the loop is about to start, it skips it because the condition is not met.

---

####

### The Big Picture

Now that we have a handle on iterations, let's see how we can use them with real data.

#### Iterating Arrays

In [week 2](/week/2), we learned all about arrays. Arrays are the most useful when performing iterations on them. Using our face cards example, let's iterate over them and see if we have a 'Queen'.

<script src="https://gist.github.com/3746493.js?file=it_array_1.rb"></script>

#### Iterating Hashes

<script src="https://gist.github.com/3746514.js?file=it_hash_1.rb"></script>

<blockquote class="tip">Why are the variable names <code>k</code> and <code>v</code> used instead of <code>key</code> and <code>value</code> in the example above?</blockquote>

### Homework

Using [http://repl.it](http://repl.it), create a nested for loop that creates a multiplication table. Use a variable to determine how many times you want to go up. For example, if the variable value is 3, you will have a multiplication table that prints out the following numbers (one number per line):

**1 2 3 2 4 6 3 6 9**

You will need to use a [range](http://www.tutorialspoint.com/ruby/ruby_ranges.htm), as shown above in the examples. Remember that in a range, you can substitute number with variables:

<script src="https://gist.github.com/3746585.js?file=ex_1.rb"></script>

You can start with this example code:

<script src="https://gist.github.com/3746616.js?file=ex_2.rb"></script>

You can modify this at [http://repl.it/Co4/1](http://repl.it/Co4/1)

Paste a link to your code on the comments for this week. Remember, we are giving away books, so do your homework :D If you need to see how it's done, you can view it here: [http://repl.it/Co4](http://repl.it/Co4).

---

##### Helpful Links

<small>[How A Ruby Case Statement Works And What You Can Do With It](http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/)</small><br/>
<small>[Ruby for Newbies: Conditional Statements and Loops](http://net.tutsplus.com/tutorials/ruby/ruby-for-newbies-conditional-statements-and-loops/) (videos)</small></br>
<small>[Ruby Operators](http://www.tutorialspoint.com/ruby/ruby_operators.htm)</small><br/>
<small>[A Wealth of Ruby Loops and Iterators](http://www.skorks.com/2009/09/a-wealth-of-ruby-loops-and-iterators/)</small><br/>
<small>[Ruby Ranges](http://www.tutorialspoint.com/ruby/ruby_ranges.htm)</small></br/>
