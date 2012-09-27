<h1>Let's Build Something!</h1>
<small class="article-source">
  Week 7 - Sep 27, 2012
</small>

Over the past six weeks, we have covered the basics of programming using the Ruby language. We have covered important topics such as:

* Variables
* Data Types (String, Number, Float, Boolean, etc.)
* Containers (Arrays and Hashes)
* Classes
* Methods
* Libraries (RubyGems)

### Drumroll, Please!

This week we will be using everything we've learned in a real-world application.

<a href="http://twitter-search-with-ruby.herokuapp.com" target="_blank"><img src="/img/sinatra_twitter_app.png" /></a>

<small>Click on the screenshot to open the app or visit <a href="http://twitter-search-with-ruby.herokuapp.com" target="_blank">http://twitter-search-with-ruby.herokuapp.com</a>

### What you should probably already know...

HTML is the backbone of the web. Learning HTML for programmers is like learning your ABC's.

If you don't know HTML and would like to learn, take the free online interactive lessons at [http://www.codecademy.com/tracks/web](http://www.codecademy.com/tracks/web).

If you don't know HTML, don't worry. The examples should be simple enough for you to understand.

### Sinatra - create web applications with Ruby

On week 3, we went over how to create a simple *rack* application. Sinatra is a framework that builds on the same concepts but makes life a lot easier for the developer.

#### Create the simplest of Sinatra apps

Let's start by playing a bit with Sinatra. Create a new folder called 'simple_tweets' and put three files in the folder:

Save this as `Gemfile`:

<script src="https://gist.github.com/3791021.js?file=Gemfile"></script>

Save this as `config.ru`:

<script src="https://gist.github.com/3791009.js?file=config.ru"></script>

Save this as `myapp.rb`:

<script src="https://gist.github.com/3791013.js?file=myapp.rb"></script>

<blockquote class="tip">
  <a href="/assets/simple_tweets.zip" class="pull-right btn btn-mini btn-primary">download</a>
  Shortcut: You can download a zip file with all three files here.
</blockquote>

Now that you have the folder with the three files, go to the folder in your terminal and run the command `bundle install`.

<script src="https://gist.github.com/3791059.js?file=bundle_install.sh"></script>

This command did two things. First, it installed any missing gems that aren't already installed. Second, it set up a file named `Gemfile.lock` which tells the Sinatra app which versions of gems it should use.

Now run the command

    ruby myapp.rb

You should see something like this:

<img src="/img/ss_sinatra_1.png" />

The reason you are seeing 'Hello World!' when you visit the URL is because you have told Sinatra that when path is `/` (or root path) is accessed in the URL with the `GET` method, show 'Hello World!'.

<blockquote class="tip">Huh? What's the GET method?</blockquote>

---

#### Working with Parameters

When you see a URL that has a question mark followed by a bunch of words and ampersands, those are considered parameters. In a Sinatra application, this data is accessible by a *hash* named `params`.

Let's try it out. Modify `myapp.rb` to look like this:

<script src="https://gist.github.com/3791132.js?file=simple_tweetsmyapp.rb"></script>

Now restart the sinatra app by typing `Ctrl-C` or `Cmd-C` on the terminal and then typing `ruby myapp.rb` again.

Next, visit the URL: [http://localhost:4567/?foo=bar](http://localhost:4567/?foo=bar)

If you see **bar** you are doing it right. You can pass in any data you want with parameters.

---

#### Views and HTML

A **view** in programming terms is typically referring to what the user is seeing. Most commonly, this is made of of HTML, CSS and JavaScript. 

In our simple sinatra application, we are displaying the param data provided by the query string at the root of the URL.

<blockquote class="tip">
  <a href="http://en.wikipedia.org/wiki/Query_string" target="_blank" class="pull-right">wikipedia</a>
  Discuss: What is a query string and path?
</blockquote>

![](/img/query_string.png)

---

##### Helpful Links

<small>[CodeCademy.com](http://www.codecademy.com/learn) is the easiest way to learn to code. It's interactive, fun, and you can do it with your friends.</small><br/>
