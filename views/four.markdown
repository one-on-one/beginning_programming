<h1>Classes and Methods: "Down the rabbit hole" OR "Curiouser and curiouser!"</h1>
<small class="article-source">
  Week 4 - Sep 06, 2012
</small>

**Today we will jump right in. We are going to pull back the curtain and look at a bizarre world. We will start looking inside classes and methods in an interactive session with Ruby, we will discuss important concepts and features of Classes and methods and why they are useful, and finally we will write some code. I will also start using technical terms so we can start acclimating to terminology (but I may not define kthese terms). Hold on...**

![](/img/alice.jpg)


## An Object by any other name...
In Ruby almost everything is an "object" (be careful, this is a techincal term that heavily overlaps with "the real world". This is good because it is intuitive, but its bad becuase it can cause confusion). Ruby is arguably one of the most Object Oriented progamming langauges in existence. What does this mean for us?

* A class is an object, an object is an object, and they both trace back to a technical thing called a `BasicObject`.

![](/img/class.gif)


### [Look Inside](http://en.wikipedia.org/wiki/Type_introspection) <small>look behind the curtain</small>
Open `irb` and do this:

* `Object.ancestors`
* `Class.ancestors`
* `Method.ancestors`


### Bonus
* Can anyone guess what _thing_ the `Object` above is?
* Cany anyone guess what the `.ancestors` is?

### "Tut, tut, child! Everything's got a moral, if only you can find it."
Ruby is filled with paradoxical sounding terms like the `Method class`, the `Class class`, the `Object class` and the `Nil class`. Don't worry about this terminology, all you need to know that Ruby has a lot of classes.

Do this in `irb`:

    def hello
      "hello"
    end

    hello
    hello.class

What do we see? Now apply the `.ancestors` method to it.

### Bonus
Can anyone guess what class the `.ancestors` method belongs to?

## <a href="http://en.wikipedia.org/wiki/Method_(computer_science)">Methods</a> <small>look behind the curtain</small>

* What is a method?
  * A peice of code that executes other code, defined with `def ... end` and belonging to a class.

Create a method called `hello`

    def hello
      "whatup!"
    end

* Scope = Refers to what is inside the method `def ... end`

## <a href="http://en.wikipedia.org/wiki/Class_(computer_programming)">Classes</a> <small>look behind the curtain</small>

* What is a class?
  * Think of it as a container similar to hashes and arrays, except a class typically contains methods.

Create a class called `NewClass`

    class NewClass
      def hello
        "whatup"!
      end
    end


### Why should I use a class?
A class is a container similar to `arrays` and `hashes`. But instead of holding some variables or values, a class can hold methods. Even better, methods inside this class are now `namespaced` -- meaning there is a named location (like an address) for these methods. Think of a class as **house with methods that live inside it**. We can call these methods just like we can call a person using a phone landline because there is a physical address. Once we call, we can converse.

And if you group similar methods in one class, then a large application is easier to manage becuase you can often tell where a certain functionality resides simply based on the name of class. Lastly, similar classes can be grouped into folders/directories that have a name.

* Organize code into functional chunks that have names -- **an address**
* If a class is container with an address (like a house), then you can only look inside or call the house if you know the address. <a href="http://en.wikipedia.org/wiki/Encapsulation_(object-oriented_programming)">look behind the curtain</a>.


"But I don't want to create new files and classes!" Here's what will happen:

1. Monster bad `config.ru` (= a file with tons of methods and its hundreds of lines long).
  * [An example of what will happen to your cofig.ru file if you don't use classes](https://gist.github.com/3658518)

#### Take Away
* What is the function of the `config.ru` file?
* What are the functions/purposes of the methods I have created?


### 'Well, after this I should think nothing of falling down stairs.'
Follow these steps in the `config.ru`:

    # at the top write (lets not worry about this for now, all it does is say include this file)
    require File.join(File.dirname(__FILE__), 'lib','new_class.rb')


Follow these steps:

* Create folder `lib`
* Go into `lib` folder a create file: `new_class.rb`

Then write the following

    class NewClass
      def self.put_the_hello_method_we_created_before_here
      end
    end


Go back to `config.ru`

    NewClass.my_method


### Finally, ...
1. Here is the final version of `config.ru`.
   <script src="https://gist.github.com/3658170.js?file=config.ru"></script>

1. Here is the final version of `new_class.rb`.
   <script src="https://gist.github.com/3658159.js?file=new_class.rb"></script>

1. Run the application.<br />
   `$rackup`

1. Open application in the browser: [http://localhost:9292](http://localhost:9292)

1. Kill the server `Ctrl c` or `Cmd c`

1. Commit and push to heroku `git add .`, `git commit -m"created new class"`, `git push heroku master`.


## Homework

* Take the randomize method we worked on last class, put in `NewClass` and call it `randomize-select`, and call it from the `config.ru`
* Figure how to make youre `randomize_select` read its names from a file. (_Hint: I've already provided a way using the_ `File` _class to require a file. You can use_ `File.open("path_to_file","w")` _to read the file. You need to figure out how to iterate through the file and put each name in an array_.) -- [_Hint2: google this or search on stackoverflow.com_.]

---

##### Helpful Links

<small>[Stack Overflow](http://stackoverflow.com/questions/tagged/ruby)</small><br/>
<small>[Object Oriented Programming](http://en.wikipedia.org/wiki/Object-oriented_programming)</small><br/>

##### Difficult Reading:

<small>[Ruby File class: behind the curtain](http://www.ruby-doc.org/core-1.9.3/File.html)</small><br/>
<small>[Ruby Object: beind the curtain](http://ruby-doc.org/core-1.9.3/Object.html)</small><br/>
<small>[Ruby Class: behind the curtain](http://www.ruby-doc.org/core-1.9.3/Class.html)</small><br/>
<small>[Ruby Method Class: behind the curtain](http://www.ruby-doc.org/core-1.9.3/Method.html)</small><br/>
<small>[Type Introspection: behind the curtain](http://en.wikipedia.org/wiki/Type_introspection)</small><br/>
<small>[Self in Ruby: behind the curtain and down the rabbit hole!](http://yehudakatz.com/2009/11/15/metaprogramming-in-ruby-its-all-about-the-self/)</small><br/>
