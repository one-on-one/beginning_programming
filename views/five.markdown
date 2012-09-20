<h1>Libraries are a Programmers Secret Sauce</h1>
<small class="article-source">
  Week 5 - Sep 13, 2012
</small>

One of the biggest misconceptions that people have about programmers is that they write everything from scratch. Wrong. Some of the best programmers know when to use other people's code and where to find it.

### Understanding Libraries

The term **library** in the programming world refers to a collection of code and documentation which is meant to be reused in other programs.

![](/img/reuse-code.gif)

If a programmer was to solely write applications without using libraries, they would likely take 10 times the amount of time to complete a task, and likely be 10 times more apt to go nuts. Three cheers for libraries!

<blockquote class="tip">Discuss: What makes a library useful to a programmer?</blockquote>

### What is a RubyGem?

<img src="/img/rubygem-box.png" align="top" style="float: right;" />

A rubygem is ruby's version of a packaged library. You are likely already using them (if you have followed along in the course). Go to your console and type:

<script src="https://gist.github.com/3709995.js?file=gem-list.sh"></script>

As you can see, you already have two gems installed: [redcarpet](https://github.com/blog/832-rolling-out-the-redcarpet) and [sinatra](http://www.sinatrarb.com/).

### Where do I find RubyGems?

It's very simple to find rubygems via Google. Let's say I want to find a gem that let's me access the local weather forecast. <a href="http://lmgtfy.com/?q=local+weather+ruby+gem" target="_blank">Search the terms 'local weather ruby gem'</a>. You'll see that there are plenty of links to rubygems that provide weather data.

Part of being a good programmer is being resourceful. There are two resources commonly used for determining which rubygems are available:

* [http://rubygems.org](http://rubygems.org)
* [http://ruby-toolbox.com](http://ruby-toolbox.com)

### Exercise

Visit the site [http://ruby-toolbox.com](http://ruby-toolbox.com) and go over some libraries that can be used to create awesome applications. Search for the term 'twitter' and see what comes up.

Now search the site [http://rubygems.org] and see what comes up for 'twitter'.

Bingo. We've found a good one: [https://rubygems.org/gems/twitter](https://rubygems.org/gems/twitter)

### How do I use a RubyGem?

#### Installation

Installing a gem is *very* simple! Open your console and type <code style="background-color: yellow;">gem install</code> and then the name of the gem. Let's install the 'google-weather' gem.

<script src="https://gist.github.com/3710117.js?file=install-weather-gem.sh"></script>

Notice that it installed three additional gems: **multipart-post**, **faraday** and **simple-oauth**. These are installed because the gem you installed depend on these gems. In other words, the twitter gem is using the other gems just like you are using the twitter gem.

<blockquote class="tip">Discuss: What are gem dependencies?</blockquote>

#### Usage

To use a ruby gem, you just have to tell your code that you need it. This is done by using the command `require`

Open up an IRB console (type `irb` in your console).

<script src="https://gist.github.com/3710267.js?file=irb-1.rb"></script>

As you can see, the response to the require command returns *true*. This means that the gem was loaded properly and wasn't loaded prior. Now let's create a twitter *client*.

<script src="https://gist.github.com/3710283.js?file=irb-2.rb"></script>

What we did here is created a new *instance* of the [Twitter::Client](http://rdoc.info/gems/twitter/Twitter/Client) class and assigned it to the variable `client`.

<blockquote class="tip">
  <a style="float: right;" href="http://rdoc.info/gems/twitter" target="_blank">hint</a>
  Discuss: What can we do with a the client object?</blockquote>

Now that we have the client, we can perform a search.

<script src="https://gist.github.com/3710334.js?file=irb-3.rb"></script>

Here we have assigned the search results data to the variable `results`. As you can see, the search results is an class called [Twitter::SearchResults](http://rdoc.info/gems/twitter/Twitter/SearchResults).

If you look in the documentation for Twitter::SearchResults, you'll see that there are some attributes you can read.

<blockquote class="tip">Exercise: Discuss how to read ruby documentation</blockquote>

<script src="https://gist.github.com/3710387.js?file=irb-4.rb"></script>

Are you getting the hang of it yet? You might be wondering where the results are. **We want to see tweets!!!**

<script src="https://gist.github.com/3710402.js?file=irb-5.rb"></script>

<div align="center">
  <a href="https://twitter.com/i/#!/search/users/bilhackmac"><img src="/img/jerome-tweet.png" /></a>
</div>

### Homework

Search for the **happy_birthday** gem and follow the instructions to print out your Happy Birthday message in your IRB console. Paste your output into a comment on this page.

*Caution:* There is a typo in the example code. See if you can find it and get around it. Remember that variable names cannot include dashes, only letters, numbers and underscores.

---

#### Homework Answer

<script src="https://gist.github.com/3758887.js?file=week_5_answer.sh"></script>

---

##### Helpful Links

<small>[Ruby-Toolbox.com](http://www.ruby-toolbox.com/)</small><br/>
<small>[RubyGems.org](http://www.rubygems.org)</small><br/>
<small>[HappyBirthday gem](https://github.com/Beakr/happy_birthday)</small></br>
