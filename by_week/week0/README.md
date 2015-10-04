# Setting up your Mac for Ruby development

* Open Terminal. It's inside Apps > Utilities (or search for it).
* Install [Homebrew](http://brew.sh)<sup><a href="#homebrew" id="homebrew-token">1</a></sup>.
	* It'll ask you to download something else - Command Line Tools. Let it.
* Install Ruby.
	* `brew install ruby`
* Pop open a new Terminal tab and check your Ruby version.
	* `ruby -v`
	* Should read something similar to `ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-darwin14]`. Don't worry about the number after the `p`. We're mainly concerned with making sure we're on Ruby 2.2.2.

## Let's set up git while we're at it

* `brew install git`
* Open a fresh Terminal tab and check the version.
	* `git --version`
	* Should read `git version 2.4.0`
* Remember when you set up an account on [GitHub](https://www.github.com) (in was in the prework). Well, we need to tell Git who you are there so things will match up later.
	* `git config --global user.name "YOUR NAME"`
	* `git config --global user.email "YOUR EMAIL ADDRESS"` (this should be the same email address you used to sign up for GitHub)
	* `git config --global credential.helper osxkeychain` (rather than go into detail on what this does, [see GitHub's docs](https://help.github.com/articles/caching-your-github-password-in-git/).


# Your editor

With whichever text editor you chose (again, I recommended [Sublime Text](http://www.sublimetext.com/) or [Atom](https://atom.io/)), your life will be made considerably easier by installing the command line helpers for each.

Of these, Atom is the easier of the two and, unless you're already familiar and comfortable with Sublime Text, I'd recommend you go with that.

If you're already pretty neckbeardy with a text editor, just stick with that; I'll assume you know what you're doing. And if you're into [Vim](http://www.vim.org) (or would like to be), we can chat offline.

Here's how to install the CLI helpers for Sublime or Atom:

## Sublime Text

Paste and run the following in Terminal:

`ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl`

**What this does:** Creates a symbolic link (think of it as a pointer that says, "Hey, this is over there") from where the helper actually lives to a spot in your `$PATH` (`$PATH` is a list of where the command line looks for programs). Now, you'll have `subl` available almost anywhere on the command line. Sweet!

## Atom

Nothing to see here. `atom` is magically already there all along. If, for some reason, it isn't<sup><a href="#atom-check" id="atom-check-token">2</a></sup> pasting the following into Terminal should do the trick:

`ln -s /Applications/Atom.app/Contents/MacOS/Atom /usr/local/bin/atom`

### One other editor set up thing

We're going to be working quite a bit with git, we're going to be writing a ton of commit messages along the way and it'll be handy to use our preferred text editor for creating those messages.

In Terminal:

#### Atom

`git config --global core.editor "atom --wait"`

#### Sublime Text

`git config --global core.editor "subl -n -w"`

## Finally, let's tweak our Terminal prompt a bit

In class, it's going to be important that you know where you are in the filesystem before running commands. For instance: It's going to be a nightmare if you `git init` your home directory or `rm -f` (note: try not to do that) a directory you didn't intend.

So, we're going to make your prompt display the entire path to the current directory as so:

In Terminal (presumes Atom. If you went Sublime, use `subl` instead of `atom`):

`atom ~/.bash_profile`

In Atom (or Sublime), paste the following at the top of that file:

```
PS1='\[`[ $? = 0 ] && X=2 || X=1; tput setaf $X`\]\h\[`tput sgr0`\]:$PWD\n\$ '
```

Save, close and open a new Terminal window or tab to see the result.

# Other Mac niceties

Since many of you are also new to the Mac, I wanted to throw in some other helpful Mac tips.

None of these are _required_, but they're nice-to-haves.

* **An app launcher:** Hunting around your Mac for a particular application to open gets tedious fast. You can use the built-in Spotlight (typically available via `⌘-Space`). Or you can use a purpose-built app launcher like [Alfred](http://www.alfredapp.com). In general, I find specific app launchers like Alfred (generally available via `Command-Space`) a bit snappier and they tend to have additional features that you might find handy.
* **A password manager:** Maybe by the end of class, you'll want to write your own (but I wouldn't recommend it). In the meantime, you're going to have a ton of passwords floating around and the typical options - one password for them all, or trying to remember them all - are both _horrible_. Password managers such as [1Password](https://agilebits.com/onepassword) (recommended, but pricey - $35-$50 depending on the breaks), [Dashlane](http://lp.dashlane.com/cjv2/?utm_source=adwords&utm_campaign=US_Search_Brand_Exact&utm_medium=15594053097&utm_term=dashlane&gclid=CPWqiLWyl8YCFQYuaQodm0MA1g) or [LastPass](https://lastpass.com)<sup><a href="#lastpass" id="lastpass-token">3</a></sup> will make your life _significantly_ better and much more secure.
* **A better Terminal:** The default Terminal application on your Mac is _fine_, really. But if you want to take it a step further, I can highly recommend [iTerm 2](https://www.iterm2.com). Bonus: It's _free_.
* **Dropbox:** We technically don't need this for class, but you'll need it sooner or later (and it's handy to sync data between your Mac and iPhone apps down the road).

## What _not_ to install

There is only a single application I'm going to ask you to _not install_ during class:

[GitHub for Mac](https://mac.github.com).

It's a fine app, but for class purposes, we want to learn Git from the bare metal. That way, said app makes more sense if you decide to use it later.


<ul id="footnotes">
	<li><a href="#homebrew-token" id="homebrew">1</a>: For a bit of background, homebrew is a "package manager" for OSX. Package managers are commonly found on Linux servers and operating system to make the installation of command line programs easier. On the Mac, homebrew does much the same thing. <a href="#homebrew-token">Back</a></li>
	<li><a href="#atom-check-token" id="atom-check">2</a>: If you want to check, type `which atom` into Terminal. <a href="#atom-check-token">Back</a></li>
	<li><a href="#lastpass-token" id="lastpass">3</a>: A quick note on Lastpass: They were <a href="https://blog.lastpass.com/2015/06/lastpass-security-notice.html/">recently hacked</a>, but it's not quite as bad as it sounds since their encryption routines are seemingly strong enough that it would take attackers a very, very long time to crack even one set of passwords. <a href="#lastpass-token">Back</a></li>
</ul>
