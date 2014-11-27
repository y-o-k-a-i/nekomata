# Neko-Mata
[Neko-Mata](http://yokai.com/?s=nekomata) is Yokai's Drupal Boilerplate to control and tame the Drupal puppets. It is a fork of [Lullabot Servo](https://github.com/Lullabot/drupal-boilerplate) but got adjusted and enhanced to the needs of Yokai.

##Drupal Boilerplate##

Drupal boilerplate is not a module. Instead it just serves as a directory structure for
starting a new drupal site. The idea behind Drupal boilerplate came from working on so many
different sites which each follow their own development practice, directory structure,
deployment guidelines, etc...

Drupal boilerplate tries to simplify starting a new site by having the most common
directory structures and files already included and set up.

##Getting started##
You can start by [downloading](https://github.com/y-o-k-a-i/neko-mata/zipball/master)
this project. Once you download it you will find that every folder contains a readme.md file.
This readme.md file has been extensively documented to explain what belongs
in that specific directory.

Here's a breakdown for what each directory/file is used for. If you want to know more please
read the readme inside the specific directory.

* [docroot](https://github.com/y-o-k-a-i/neko-mata/tree/master/docroot)
 * Where your drupal root should start.
* [drush](https://github.com/y-o-k-a-i/neko-mata/tree/master/drush)
 * Contains project specific drush commands, aliases, and configurations.
* [results](https://github.com/y-o-k-a-i/neko-mata/tree/master/results)
 * This directory is just used to export test results to. A good example of this
   is when running drush test-run with the --xml option. You can export the xml
   to this directory for parsing by external tools.
* [scripts](https://github.com/y-o-k-a-i/neko-mata/tree/master/scripts)
 * A directory for project-specific scripts.
* [test](https://github.com/y-o-k-a-i/neko-mata/tree/master/tests)
 * A directory for external tests. This is great for non drupal specific tests
 such as selenium, qunit, casperjs.
* [.gitignore](https://github.com/y-o-k-a-i/neko-mata/blob/master/.gitignore)
 * Contains the a list of the most common excluded files.

## Install Profile Instructions
```
$ cd docroot
$ drush make neko-mata.make
```

Then install Drupal, selecting the "Neko-Mata" profile. This will give you

* Responsive toolbar
* Shiny admin theme
* CKEditor with a HTML Purifier based filter and Linkit
* Basic "Page" content type
* The windup starter theme with automation tools already configured


Enhanced by Yokai's, credits to the [Lullabot](https://github.com/Lullabot) Robots&trade;
