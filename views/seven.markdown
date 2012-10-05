<h1>Let's Build Something!</h1>
<small class="article-source">
  Week 7 - Sep 27, 2012
</small>

<iframe width="520" height="292" src="http://www.youtube.com/embed/UMIufcpGrx8" frameborder="0" allowfullscreen></iframe>

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

### Create the simplest of Sinatra apps

On week 3, we went over how to create a simple *rack* application. Sinatra is a framework that builds on the same concepts but makes life a lot easier for the developer.

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

<blockquote class="tip">Discuss: What's the GET method?</blockquote>

### Working with Parameters

When you see a URL that has a question mark followed by a bunch of words and ampersands, those are considered parameters. In a Sinatra application, this data is accessible by a *hash* named `params`.

Let's try it out. Modify `myapp.rb` to look like this:

<script src="https://gist.github.com/3791132.js?file=simple_tweetsmyapp.rb"></script>

Now restart the sinatra app by typing `Ctrl-C` or `Cmd-C` on the terminal and then typing `ruby myapp.rb` again.

Next, visit the URL: [http://localhost:4567/?foo=bar](http://localhost:4567/?foo=bar)

If you see **bar** you are doing it right. You can pass in any data you want with parameters.

### Understanding Path and Query String

A **view** in programming terms is typically referring to what the user is seeing. Most commonly, this is made of of HTML, CSS and JavaScript. 

In our simple sinatra application, we are displaying the param data provided by the query string at the root of the URL.

<blockquote class="tip">
  <a href="http://en.wikipedia.org/wiki/Query_string" target="_blank" class="pull-right">wikipedia</a>
  Discuss: What is a query string and path?
</blockquote>

![](/img/query_string.png)

<table class="table table-condensed table-bordered">
  <tr>
    <td>Protocol</td>
    <td>http://</td>
  </tr>
  <tr>
    <td>Domain</td>
    <td>google.com</td>
  </td>
  <tr>
    <td>Path</td>
    <td>/search</td>
  </tr>
  <tr>
    <td>Query String</td>
    <td>happy=fun&amp;foo=bar</td>
  </tr>
</table>

The query string allows the application to know what data is being passed to it. In this example, 'fun' is the value of the parameter 'happy', and 'bar' is the value of the parameter 'foo'.

In our Sinatra app, the path determines which method is used in `myapp.rb`. Let's modify the file to respond to the path `/search`:

<script src="https://gist.github.com/3794632.js?file=myapp.rb"></script>

Now restart the app and visit the URL: [http://localhost:4567/search](http://localhost:4567/search)

<img src="/img/ss_sinatra_2.png" />

Simple, right?

### Views: ERB and HTML

Printing information from `myapp.rb` is cool, but not very useful if we want to show HTML.

Sinatra supports using HTML files for the different views. It's probably easiest to explain this by creating the files first and showing how it works.  

<blockquote class="tip">
  <a href="/assets/simple_tweets-2.zip" class="pull-right btn btn-mini btn-primary">download</a>
  Shortcut: You can download a zip file with the updated files here.
</blockquote>

1. Create a folder in your simple_tweets folder called `views`
2. Add a new file in the views folder called `index.erb` with the following content:

    <script src="https://gist.github.com/3794717.js?file=index.erb"></script>

3. Now modify `myapp.rb` to use the view you just created:

    <script src="https://gist.github.com/3794721.js?file=myapp.rb"></script>

4. Restart your app and visit [http://localhost:4567](http://localhost:4567)  

<img src="/img/ss_sinatra_3.png" />

#### So what just happend?

When we modified our `get '/index'` method in `myapp.rb`, we told it to use the erb file `index.erb` as it's output. **ERB** stands for *Embedded Ruby*. This allows you to add ruby into an HTML file by using `<% %>`. We will get into this next week, so don't worry about it quite yet.

### Show the world your app with Heroku

As we discussed in [week three](/week/3), we can deploy our app to Heroku with a few simple steps. If you haven't set up Heroku on your machine, you should visit [http://heroku.com](http://heroku.com) and set up your own account. You must also install the [toolbelt](https://toolbelt.heroku.com/) once you have an account.

#### Steps

1. Make sure you are in your application folder in your console.
    
    `cd simple_tweets`

2. Initialize the app with [git](http://git-scm.com/). Heroku needs this in order to copy your application to their server.

    `git init`

3. Add all the files you created to the *git repository* with the following commands:

    `git add .`

    `git commit -am "Initial commit"`

4. Prepare the app to use Heroku:

    `heroku create`

5. Deploy the app to Heroku:

    `git push heroku master`

Here is what my console looked like when following these steps:    

<script src="https://gist.github.com/3794862.js?file=deploy_to_heroku.sh"></script>

Notice that after step 4 above, Heroku assigned a the URL [http://shrouded-oasis-2225.herokuapp.com/](http://shrouded-oasis-2225.herokuapp.com/) to this application. After I deployed it to Heroku (step 5), I am able to visit that URL and see that it works.

<img src="/img/ss_sinatra_4.png" />

<blockquote class="tip">
  Note: The reason we could deploy to Heroku is because we added the file 'config.ru'. Heroku requires this file in order to run a Sinatra application.
</blockquote>

### Homework

Modify your app by adding the path `/about_me` and create a view containing information about yourself. Deploy these changes to Heroku and and post the link in the comments.

Remember, to add new files to your git repository, use the command:
    
    git add .

After you perform `git add .`, you can follow perform step 3, then 5 above to re-deploy (skip step 4).

Please post any questions in the comments area.

<blockquote class="tip">
  <a href="/assets/simple_tweets-3.zip" class="pull-right btn btn-mini btn-primary">download</a>
  Need help? You can download Eric's updated files here.
</blockquote>

---

##### Helpful Links

<small>[Sinatra.rb](http://www.sinatrarb.com/) - Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort.</small><br/>
<small>[Intro to Sinatra](http://screencasts.org/episodes/introduction-to-sinatra) - Screencast on Sinatra for beginners.</small><br/>
<small>[CodeCademy.com](http://www.codecademy.com/learn) is an interactive, fun way to learn to code.</small><br/>
<small>[ERB](http://ruby-doc.org/stdlib-1.9.3/libdoc/erb/rdoc/ERB.html) - Documentation on Ruby templating with ERB</small>
