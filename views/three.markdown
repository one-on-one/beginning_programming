<h1>Making a Simple Site</h1>
<small class="article-source">
  Week 3 - Aug 30, 2012
</small>

## Programming is more than knowing<br /> a programming language

![](/img/space-shuttle.jpg)

"Web development" is a broad term for the work involved in developing a web site.

### [Languages](http://en.wikipedia.org/wiki/Web_development)

  * HTML
  * CSS
  * JavaScript
  * PHP, Ruby, Python, Java, etc...
  * SQL

### Developer Tools

  * Text Editors / IDEs

    * VIM
    * Emacs
    * Sublime
    * TextMate
    * RubyMine

  * Version Control

    * GIT
    * Subversion
    * Mercurial

  * Misc

    * Shells
    * Visual Diff
    * etc...


### <a href="http://en.wikipedia.org/wiki/Server_(computing)">Servers</a>

A server is a computer dedicated to running one or more services, to serve the needs of users and/or other computers on the network.

  * CentOS
  * Fedora
  * Ubuntu
  * Microsoft

### [Web Servers](http://en.wikipedia.org/wiki/Web_server)

Software that helps to deliver web content that can be accessed through the internet.
*Sometimes also refers to the physical hardware.*

  * Apache
  * Nginx
  * IIS

### [Databases](http://en.wikipedia.org/wiki/Database)

A database is software that holds an organized collection of data.

  * MySQL
  * PostgreSQL
  * Oracle
  * SQL Server
  * MongoDB

*Often act as a [reverse proxy](http://en.wikipedia.org/wiki/Reverse_proxy).*

### [Clients](http://en.wikipedia.org/wiki/Web_browser)

A software application for retrieving, presenting, and traversing information resources on the World Wide Web.

  * Firefox
  * Chrome
  * Safari
  * Internet Explorer
  * Opera

### [Protocols](http://en.wikipedia.org/wiki/Communications_protocol)

A system of digital message formats and rules for exchanging messages in or between computing systems.

  * TCP/IP
  * HTTP
  * HTTPS

### [Frameworks](http://en.wikipedia.org/wiki/Web_application_framework)

A software framework is designed to support the development of dynamic websites and web services.
It aims to alleviate the overhead associated with common programming activities.

  * PHP
  * Zend
  * Ruby on Rails
  * Django
  * ASP.NET

### [Hosts](http://en.wikipedia.org/wiki/Web_host)

A web hosting service is a type of internet hosting service that allows individuals and organizations to make their website accessible via the World Wide Web.

  * Shared
  * Dedicated
  * VPS
  * [Cloud](http://en.wikipedia.org/wiki/Cloud_computing) - The use of hardware and software that are delivered as a service over the internet.

    * [Amazon](http://aws.amazon.com/)

      * [Heroku](http://www.heroku.com/)
      * [EngineYard](http://www.engineyard.com/)

    * [Rackspace](http://www.rackspace.com/cloud/)
    * [Microsoft](http://www.windowsazure.com/en-us/)
    * [AppFog](http://www.appfog.com/)

## Don't worry... <br />its not as hard as it sounds

![](/img/cat-on-back.jpg)

Thank goodness for the "cloud"

---

["51 percent of people believe stormy weather can interfere with cloud computing.""](http://www.citrix.com/English/NE/news/news.asp?newsID=2328309)

---

## Lets Make an App

We will be using [Heroku](http://www.heroku.com/) to deploy a simple web application.

### What you will need

* A free user account with [Heroku](https://api.heroku.com/signup).

* Also, the following items need to be installed on your computer.

  * [Ruby](http://www.ruby-lang.org/en/)
  * [RubyGems](http://docs.rubygems.org/read/book/1) - *most installers will include this*
  * The [Bundler GEM](http://gembundler.com/) - `$gem install bundler`
  * [GIT](http://git-scm.com/) - version control

#### Other tools worth looking into

* [rvm](https://rvm.io/) - for mac & linux
* [pik](https://github.com/vertiginous/pik/) - for windows

## Write the App

1. Create a directory named `random_string`

1. Open a [console](http://en.wikipedia.org/wiki/System_console) and change directories to `random_string`.<br />

1. Create a file named `Gemfile` inside of the `random_string` directory.

1. Edit `Gemfile` to look like the example below.
   <script src="https://gist.github.com/3527573.js?file=Gemfile"></script>

1. Run bundler to install the gems specified in the `Gemfile`.<br />
   `$bundle`

1. Create a file named `config.ru` inside of the `random_string` directory.

1. Edit `config.ru` to look like the example below.
   <script src="https://gist.github.com/3528152.js?file=config.ru"></script>

1. Run the application.<br />
   `$rackup`

1. View the application in a browser at: [http://localhost:9292](http://localhost:9292)

## Deploy the App

1. Initialize a Git repository to capture the changes we make to the application.<br />
   `$git init`

1. Save our changes in the Git repo.<br />
   `$git add .`<br />
   `$git commit -m "Initial commit."`<br />

1. Create a Heroku deployment for the app.<br />
   `$heroku create`

1. Deploy the app to Heroku.<br />
   `$git push heroku master`

1. View the deployed application in a browser by navigating to the URL Heroku assigned to the app.






---

##### Helpful Links

<small>[https://devcenter.heroku.com/articles/ruby](https://devcenter.heroku.com/articles/ruby)</small><br/>
<small>[https://devcenter.heroku.com/articles/rack](https://devcenter.heroku.com/articles/rack)</small><br/>
