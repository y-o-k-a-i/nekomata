# Neko-Mata
[Neko-Mata](http://yokai.com/?s=nekomata) is Yokai's Drupal Boilerplate to control and tame the Drupal puppets. It is a fork of [Lullabot Servo](https://github.com/Lullabot/drupal-boilerplate) but got adjusted and enhanced to the needs of Yokai.

##Drupal Boilerplate##

Drupal boilerplate is not a module. Instead it just serves as a directory structure for
starting a new drupal site. The idea behind Drupal boilerplate came from working on so many
different sites which each follow their own development practice, directory structure,
deployment guidelines, etc...

Drupal boilerplate tries to simplify starting a new site by having the most common
directory structures and files already included and set up.


Prerequisites | Description
------------ | ------------
`node` / `npm` |
`yeoman` | globally installed
`generator-drupal-theme` | globally installed
`drush` |


##Getting started##
You can start by either [downloading](https://github.com/y-o-k-a-i/nekomata/archive/master.zip)
the project manually and move it to the wished directory or do this by command line, assuming you are already in the whished directory.

```shell
$ wget https://github.com/y-o-k-a-i/nekomata/archive/master.zip
$ tar -xvf master.zip && rm master.zip
$ mv nekomata-master <project-name>
```

Once you download it you will find that every folder contains a readme.md file.
This readme.md file has been extensively documented to explain what belongs
in that specific directory.

Here's a breakdown for what each directory/file is used for. If you want to know more please
read the readme inside the specific directory.

* [docroot](https://github.com/y-o-k-a-i/nekomata/tree/master/docroot)
 * Where your drupal root should start.
* [drush](https://github.com/y-o-k-a-i/nekomata/tree/master/drush)
 * Contains project specific drush commands, aliases, and configurations.
* [results](https://github.com/y-o-k-a-i/nekomata/tree/master/results)
 * This directory is just used to export test results to. A good example of this
   is when running drush test-run with the --xml option. You can export the xml
   to this directory for parsing by external tools.
* [scripts](https://github.com/y-o-k-a-i/nekomata/tree/master/scripts)
 * A directory for project-specific scripts.
* [tests](https://github.com/y-o-k-a-i/nekomata/tree/master/tests)
 * A directory for external tests. This is great for non drupal specific tests
 such as selenium, qunit, casperjs.
* [.gitignore](https://github.com/y-o-k-a-i/nekomata/blob/master/.gitignore)
 * Contains the a list of the most common excluded files.

## Install Profile Instructions
```shell
$ cd docroot
$ drush make nekomata.make
```

Then install Drupal, selecting the "Neko-Mata" profile.



This will give you

* Responsive toolbar
* Adminimal admin theme
* CKEditor with a HTML Purifier based filter and Linkit ready to go
* The Aurora starter theme
* (TODO: move content types to own modules, Basic "Page" content type)

## Theme Instructions
```shell
$ cd docroot/sites/all/themes/contrib
$ yo
```

Select the `Drupal Theme` and go ahead with your wished setup.


Enhanced by Yokai's, credits to the [Lullabot](https://github.com/Lullabot) Robots&trade;
