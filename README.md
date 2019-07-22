## Ruby Smart_App Tech test

This challenge is written in Ruby and tested with Rspec

## The problem
Write a ruby script that:
Receives a log as argument (webserver.log is provided)
Returns the following:
> list of webpages with most page views ordered

> list of webpages with most unique page views also ordered

## Getting started

**Clone to you local machine**

```
$ git clone
```

**Setting up**

1. Initialise Ruby with Bundler, `bundle init` if your haven't installed Ruby before

2. Run `bundle install` to install dependencies

3. Import test file

**To Run The App**

Run in the command line

```
ruby parser.rb fixtures/webserver.log

```

**Test coverage**

COVERAGE:  94.32% -- 83/88 lines in 5 files

### To Run in the command line

```
rspec

```
**Linter**

Inspecting 7 files
.......
7 files inspected, no offenses detected

### To Run in the command line

```
rubocop

```
