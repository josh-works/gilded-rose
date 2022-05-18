Gilded Rose Kata in Ruby
========================

The Gilded Rose Kata in Ruby following the style from the [Sandi Metz](https://twitter.com/sandimetz)
presentation [All the Little Things](https://www.youtube.com/watch?v=8bZh5LMaSmE).

The objective of this kata is to practice refactoring. This kata motivates the need for refactoring as follows:

* The implementation is spaghetti code, and difficult to glean context.
* The tests of the current implementation pass, but there are a number of pending tests.
* You are asked to implement the code to get the pending tests to pass.
* This isn't easy, because the implementation is so messy.
* Consider using the passing tests to refactor the code to make it more habitable before implementing new functionality.
Also known as a [preparatory refactoring](http://martinfowler.com/articles/workflowsOfRefactoring/#preparatory).

## Where to Start

Begin refactoring the existing `lib/gilded_rose.rb` class.

## Original Requirements

Here are the [requirements](https://github.com/jimweirich/gilded_rose_kata#original-description-of-the-gilded-rose)
as given in the original version of the kata. It may help you to understand the problem domain if you know
that the [Gilded Rose](http://wowwiki.wikia.com/wiki/Gilded_Rose) is an inn from the World of Warcraft.


-----------------

### 2022-05-16

Yesterday night I made big progress on what I'd started here: https://gist.github.com/josh-works/ce3c68389b87c51e50941c92d65f19e6

I got blocked a few different times, I think I could walk someone through most of what I learned over the last many hours, in an hour or two, and they'd learn way, way more than I did in the first four hours of my own flaily-work.

Just got to a pretty good state with this refactor. I've tracked (mostly) with Sandi all the way to 29.5 minutes through this talk:

https://youtu.be/8bZh5LMaSmE?t=1774

I'd have a link to the specific commit, but Heroku and I have not been getting along well over the last few days.

The commit is `2b86b0f14ecaf01e606ff2d09e7fb4d7656ca405`. I've got an inheritance hierarchy, though not with understanding (I have a path to get from here to having an inheritance hierarchy _with understanding_, it'll take some time.)

----------

Spent a little on this today before pairing with Cole (in Tuple!) on some metabase queries. Got the ticket mostly done with a tool for Support & Success teams to not have to log into Mandrill for as much.

Got a lot more of this refactor done. Pushing into "extract configuration" pattern.

aaand I did it. I got to the end of the refactor. I followed along with her pretty closely, had to debug a few times, next time I'll `git reset --hard HEAD` and speed-run this. Wherever I get stuck will be where I'll start copying down code in my notebook.

I'm super excited.

----------

Took a walk, grabbed a beer, lets refactor this from scratch:

```
git reset --hard HEAD
```


OK, actually I checked out `master` again, checked out a new branch (like `josh speedrun 1`) and then cherry-picked my commit that bumped by ruby-version to something modern, because I got an error when I did:

```
rspec spec/gilded_rose.rb
```

Anyway, I've now got passing tests, with the code and spec in it's original state.

I'm kicking this off with:

```
rspec spec/gilded_rose_spec.rb:6 --order dependent
```

Gonna stretch my legs, resume progress at 6:05

Huge progress in 20 minutes. Got all the way to making `Normal.new(@days_remaining...)` work, test pass, I've added `#quality` and `#days_remaining` forwarding the message to `@item` if it exists.

dope.

---------------------

## 2022-05-18

Had a 'passion and purpose' workshop yesterday, so didn't touch anything related to Jira or this Gilded Rose.

Finally got a few minutes. My git output says it took another 25 minutes to refactor the entire Gilded Rose class to use `open/closed` principles (I still don't understand that) and to implement the `object factory` pattern.

The code looks great, I think this is good practice. I might aim to speed-run this one more time, but i'll do that with Emily perhaps, or while we're doing a review/teach of this refactoring exercise. I feel like I got good practice with lots of cool patterns.
