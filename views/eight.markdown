<h1>Graduation Day</h1>
<small class="article-source">
  Week 8 - Oct 4, 2012
</small>

<blockquote class="tip">Note: If you didn't go over week 7, you should before continuing</blockquote>

<div class="row">
  <div class="span2">
    <img src="/img/gradcap.jpeg" />
  </div>
  <div class="span4">
    <p>
      Last week we created a simple Sinatra application which takes the data from a query string and places it into a view. You can download the current version of code that we will be working with here:
    </p>
    <a href="https://github.com/cavneb/simple_tweets/zipball/week6" class="btn btn-primary"><i class="icon-download icon-white"></i> Download Latest</a>
  </div>
</div>

### Fail to Plan, Plan to Fail

Every time I write an application, I always want to understand the purpose of it and what problems it is trying to solve. In this case we want to do the following:

* Be able to search tweets by keyword
* Display tweets in a beautiful, readable way

I typically start off with a simple sketch of what I want the app to look like. It's usually doesn't indicate what it will look like in the end, but it is something to refer to as you are programming. This keeps you focused and on track.

![](/img/sketch.jpg)

### Make a list

Now that we have a sketch of what we are needing, let's make a list of todo's.

1. We have a search form for submitting keywords, so we will need to create a search form.
2. We have the words 'Found ___ Results'. We will need to somehow get a result count of tweets found.
3. We have a table with the tweet data. We will need to get the tweets to the view so we can place them in the table.

### HTML and Forms

For those who are not familiar with HTML, I recommend taking the [free online course at Codecademy](http://www.codecademy.com/tracks/web). If you do already know it, or at least a bit, you should be able to follow along with no issues.

Take a look at `views/index.erb`. You will see we have a simple HTML page with a title and an H1 tag in the body. Let's make some changes:

<script src="https://gist.github.com/3823104.js?file=index.erb"></script>

Now when you start your app and go to [http://localhost:4567](http://localhost:4567), you should see something like this:

![](/img/ss_tweets_1.png)

### Get the form working

We now have a form in the HTML which we can test out. Notice that the form's `method` attribute is set to **GET**. Last week we discussed the difference between GET and POST. Let's try submitting the form with a value and see what happens. Type 'test' in the search field and click 'Search'.

If you look at your URL, you should see this:

    http://localhost:4567/?query=test

As we discussed prior, the parameter *query* has been passed in with the value of *test*.

#### Access the params

Let's open up `myapp.rb` and add modify it.

<script src="https://gist.github.com/3823165.js?file=myapp.rb"></script>

By assigning the value of *query* to an instance variable, that now allows us to use that variable in our erb file. This is some of the power that Sinatra provides. Open up your index.erb file and make the following changes to the form:

<script src="https://gist.github.com/3823198.js?file=index.erb"></script>

We added the code [`value="<%= @query %>"`] to the input tag. What does this do?

#### Using Ruby in your HTML

ERB files are **Embedded Ruby** files. They allow both HTML and Ruby. The way to include ruby is by using the tags `<%` and `%>`. Here are the different types of tags you can use in your erb file.

<table class="table table-bordered">
  <tr>
    <td style="width: 100px;"><code><% 1 + 2 %></code></td>
    <td>This will evaluate ruby inside the tags but will not print the results to the HTML. This is commonly used for iterating loops.</td>
  </tr>
  <tr>
    <td><code><%= 1 + 2 %></code></td>
    <td>This will evaluate ruby inside the tags *AND* print the results to the HTML.</td>
  </tr>
  <tr>
    <td><code><%# 1 + 2 %></code></td>
    <td>This will *NOT* evaluate ruby inside the tags nor display results. This is used for commenting.</td>
  </tr>
</table>

Now if you restart the app and re-submit the for, you will see the search term you entered still in the input field.

### Hello, Twitter

<blockquote class="tip">Note: If you didn't go over week 5, you should before continuing</blockquote>

In week 5, we explored using the Twitter gem in order to search for keywords. Now that we have access to the query value in `myapp.rb`, let's add Twitter.

To do this, we will need to make sure that the Twitter gem is being used by our app. Add the following line to the bottom of your Gemfile:

<pre><code>gem 'twitter', '3.7.0'</code></pre>

Run the command `bundle install` in your console. 

<script src="https://gist.github.com/3823295.js?file=bundle_install.sh"></script>

In the Gemfile, we specified the version 3.7.0 for the Twitter gem we needed. The latest version, 4.0, requires authentication.. so let's just use this one for now.

Now that the gem is installed and ready to use, let's set it up in `myapp.rb`.

<script src="https://gist.github.com/3823358.js?file=myapp.rb"></script>

On line 2, we require the Twitter gem so we can use it in this ruby file.

On lines 9-11, we do what we did in week 5 by creating an instance of the Twitter::Client class, performing the search and assigning the search results to the variable `@tweets`.

Now restart the app and try it out. Do you see any output? Probably not. We need to show some results in the view.

Modify `index.erb` to show the correct number of results. You won't need to perform a restart if you are only modifying the views.

<script src="https://gist.github.com/3823392.js?file=index.erb"></script>

Notice that we used the `<%= %>` tags (with the equal sign). This prints out the results of whats in the tags. Calling the `count` method on the `@tweets` variable returns a number, because @tweets is an Array.

![](/img/ss_tweets_2.png)

### Loops in Tables

A powerful, commonly used technique in web app development is generating tables with data. Arrays and Hashes basically provide data to do just that. Let's look at the data we are working with.

The variable **@tweets** is an array that contains *Tweet* objects. The *Tweet* objects are basically Hashes, containing key/value pairs.

For example, if I have 5 tweets, each one of them will have a username. The 5 tweets are the contents of my array and the username is a Hash attribute (key/value pair).

<blockquote class="tip">Confusing? If you didn't go over week 6, you should before continuing</blockquote>

Let's use this data to create our table. Modify `index.erb`:

<script src="https://gist.github.com/3823427.js?file=index.erb"></script>

On lines 10 and 16, we are performing a loop. In this loop we are assigning each item in the **@tweets** array to the variable *tweet*.

On line 12, we are displaying an image with the source set to the tweet's profile image url.

On line 13, we are displaying the tweet's username.

On line 14, we are displaying the text of the tweet.

Now refresh your application and take a look.

![](/img/ss_tweets_3.png)

Simple, right?

### Debugging

Never make assumptions when it comes to the user of your application. The way we have it written, we are assuming that the user has provided the *query* parameter. What if they haven't?

Open up the url [http://localhost:4567](http://localhost:4567) and see what happens.

<a href="/img/ss_tweets_4.png" target="_blank"><img src="/img/ss_tweets_4.png" /></a>

<blockquote class="tip">Exercise: Review the error page and discuss why this error is being thrown.</blockquote>

We need to tie up our loose ends so this doesn't happen. Look at your `myapp.rb` code. We are searching Twitter everytime a request is made to it. Do we want to do that? Probably not. We only want to search Twitter if there is a search word provided.

Let's modify our code a bit to prevent searching Twitter if the query isn't provided.

<script src="https://gist.github.com/3823507.js?file=myapp.rb"></script>

Now restart and reload your app.

<a href="/img/ss_tweets_5.png" target="_blank"><img src="/img/ss_tweets_5.png" /></a>

![](/img/scary-dog.jpg)

At this point, some of you may think "I'm not going to be able to figure this out because I am getting too many errors. It's just supposed to work".

Remember that a great programmer is highly skilled at solving bugs. That doesn't mean they don't create them. Don't get discouraged. Remember that you only have to figure out a solution once, then you can always refer to that in your head.

On the error page, we see that there is a problem on line 16 of `index.erb`. It shows at the top that the error is **NoMethodError**. Following that it shows that the method 'count' is undefined for 'nil'.

Basically, what the error page is really saying is that on line 16 of `myapp.rb`, you are calling the method `count` on the variable `@tweets`, but `@tweets` is nil, so it breaks.

Why is @tweets nil? This is because of our changes to `myapp.rb`. We need to make sure that we provide default data if we don't search Twitter.

Make the following changes to `myapp.rb`:

<script src="https://gist.github.com/3823580.js?file=myapp.rb"></script>

On line 7, we set the instance variable **@tweets** to an empty array. If the search is performed, it will be overridden.

Restart and reload the app in your browser.

![](/img/ss_tweets_6.png)

Go ahead and play around with it for a bit. You deserve it!

### I'm sexy and I know it!

Lastly, we want the app to look beautiful. This is very very simple using a CSS library by Twitter called [Twitter Bootstrap](http://twitter.github.com/bootstrap/).

There is a shortcut to using this in our page. Here's my final code to make it look good:

<script src="https://gist.github.com/3823634.js?file=index.erb"></script>

The only changes I had to make are as follows:

* Set all of the contents in the *body* tag inside a div with the class *container*
* Add the class *well* to the form
* Remove the submit button
* Add the class *pull-right* to the form input field
* Add classes to the table

---

<a href="https://github.com/cavneb/simple_tweets/zipball/week8" class="btn btn-primary pull-right"><i class="icon-download icon-white"></i> Download Final Application</a>

<a href="http://shrouded-oasis-2225.herokuapp.com/" class="btn btn-success" target="_blank"><i class="icon-star icon-white"></i> View Simple Twitter App Online</a>

---

All source code for [http://learntoprogram.herokuapp.com](http://learntoprogram.herokuapp.com) can be found at [https://github.com/one-on-one/beginning_programming](https://github.com/one-on-one/beginning_programming). It's a Sinatra app :D



