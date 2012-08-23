<h1>Variables, Data Types and Containers</h1>
<small class="article-source">
  Week 2 - Aug 23, 2012
</small>

This week, we will learn about the most common and vital components of programming: Variables, Data Types 
and Containers. Look at the contact book below. What do you see? After this lesson, look over the image
again and see if you can view it from a programmers perspective.
<a href="/img/contact-book.png"><img src="/img/contact-book.png" /></a>

### Variables

A variable is how a programmer assigns a value to a memory allocation that can be used in a program. Or in other words,
a variable is how you reference data. 

You have probably already used variables when taking Algebra.

<img src="/img/algebra.png" />

It's simple. Here are some example of variables and variable assigment:

<script src="https://gist.github.com/3431330.js?file=w2-e1.rb"></script>

<a href="http://repl.it/Cfg" target="_blank" class="btn btn-mini btn-info try-it">Run Example Code</a>
      
Variables can contain any type of data, not just numbers. Let's learn about the different data types.

### Data Types

#### String

A `String` is an object that holds a sequence of characters. It can contain any characters *(letter, number, symbol, etc)*.

<script src="https://gist.github.com/3431360.js?file=w2-e2.rb"></script>

<a href="http://repl.it/Cfg/1" target="_blank" class="btn btn-mini btn-info try-it">Run Example Code</a>

---

#### Numeric

Numeric data types are typically split into a couple of sub-types:

* **Integer** - Numbers with no decimal places. For example: `100`, `0`, `-43`
* **Floats** - Numbers with decimal places. For example: `1.05`, `0.01`, `-45.005`

Floats can also have a value equal to an integer. For example, `5.0` is equal to `5`.

<blockquote class="tip"><strong>Discuss:</strong><br/>
  When would you use an Integer versus a Float?
</blockquote>

Here's an example of how to use Integers and Floats:

<script src="https://gist.github.com/3431365.js?file=w2-e3.rb"></script>

<a href="http://repl.it/Cfh" target="_blank" class="btn btn-mini btn-info try-it">Run Example Code</a>

<blockquote class="tip"><strong>Discuss:</strong><br/>
  What is the difference between the String <code>"5"</code>, the Integer <code>5</code> and the Float <code>5.0</code>?
</blockquote>

---

#### Boolean

Is the sky blue? Do dogs have tails? Do you have 4 noses?

The answer to these questions will be either Yes or No. In programming, we call the values `true` or `false`. This is a boolean value.

Booleans are used all the time when performing comparisons:

<script src="https://gist.github.com/3431389.js?file=w2-e4.rb"></script>

<a href="http://repl.it/Cfj" target="_blank" class="btn btn-mini btn-info try-it">Run Example Code</a>

### Containers

#### Array (or List)

<img src="/img/deck-of-cards.png" />

An array is a collection of values. An example of an array would be deck of cards. Each card represents a value *(e.g. Ace of Spades)*. The array would be the collection of the cards. In the image above, the array contains 4 cards.

<script src="https://gist.github.com/3431530.js?file=w2-e5.rb"></script>

<a href="http://repl.it/Cfk" target="_blank" class="btn btn-mini btn-info try-it">Run Example Code</a>

Array values can be accessed by using an **index**. An `index` is the integer position of the value in the array. In the example above, the 'Queen' is returned when calling the 2nd position in the array. Note that the array index starts with 0, not 1.

Arrays are very powerful because they have a lot of built-in tools. You can do neat stuff like *sorting*, *random selection*, *remove duplicates*, etc.

---

#### Hash (or Map)

Hashes are also known as key->value pairs. You run into these every day. For example:

<img src="/img/mclovin_license.jpeg" />

* **Name:** McLOVIN
* **City:** HONOLULU
* **DOB:** 06/03/1981

The hash in this example is the collection of data shown above. The `key` is the name of the value (e.g. City). The `value` is the value that is assigned to the `key` (e.g. HONOLULU).

The wonderful thing about hashes is that you are able to access values based on their `keys`. Let's look at this programatically.

<script src="https://gist.github.com/3431729.js?file=w2-e5.rb"></script>

<a href="http://repl.it/Cfl" target="_blank" class="btn btn-mini btn-info try-it">Run Example Code</a>

Hashes can have any data type as a key and value, but typically keys must are String. Here's a more complex example of a hash:

<script src="https://gist.github.com/3431725.js?file=w2-e6.rb"></script>

<a href="http://repl.it/Cfm" target="_blank" class="btn btn-mini btn-info try-it">Run Example Code</a>

---

### Exercise

Review the contact book and determine where the different data types and containers are.

### Homework

Using [http://repl.it](http://repl.it), create a hash which contains information about yourself. Be sure to include all the data types, also utilizing arrays.

Extra credit goes to whomever can share their code via the comments.

---

##### Helpful Links

<small>[http://repl.it - online ruby interactive console](http://repl.it)</small><br/>
<small>[Ruby String documentation](http://www.ruby-doc.org/core-1.9.3/String.html)</small><br/>
<small>[Ruby Array documentation](http://www.ruby-doc.org/core-1.9.3/Array.html)</small><br/>
<small>[Ruby Hash documentation](http://www.ruby-doc.org/core-1.9.3/Hash.html)</small>
