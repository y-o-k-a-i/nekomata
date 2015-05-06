# Neko-Mata
[Neko-Mata](http://yokai.com/?s=nekomata) is Yokai's Drupal Boilerplate to control and tame the Drupal puppets.
It is a fork of [Lullabot Servo](https://github.com/Lullabot/drupal-boilerplate) but got adjusted and enhanced to the needs of Yokai.

![Neko-Mata](http://i.imgur.com/dqKifux.jpg)

*Image credits, Ben Newman*

##Drupal Boilerplate##

Drupal boilerplate is not a module. Instead it just serves as a directory structure for
starting a new drupal site. The idea behind Drupal boilerplate came from working on so many
different sites which each follow their own development practice, directory structure,
deployment guidelines, etc...

Drupal boilerplate tries to simplify starting a new site by having the most common
directory structures and files already included and set up.

##Prerequisites##

Packages |
------------ |
`node` / `npm` |
`yeoman` |
`generator-drupal-theme` |
`drush` |


##Getting started##
You can start by either [downloading](https://github.com/y-o-k-a-i/nekomata/archive/master.zip)
the project manually and move it to the wished directory or do this by command line, assuming you are already in the wished directory.

```shell
$ wget https://github.com/y-o-k-a-i/nekomata/archive/master.zip
$ tar -xvf master.zip && rm master.zip
$ mv nekomata-master <project-name>
```

Once you download it you will find that every folder contains a readme.md which explains what belongs
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
$ cd <project-name>/docroot
$ drush make nekomata.make -y
```

* Create a database `<dbname>`
* Check if `sites/default/files` exists and is writable
* copy `sites/default/default.settings.php` to `settings.php`

Then install Drupal, selecting the "Neko-Mata" profile.

```shell
$ drush si nekomata \
           --db-url="mysql://<user>:<pass>@localhost/<dbname>" \
           --account-name=<user>    \
           --account-mail=<email>   \
           --locale=<langcode>      \
           --site-name="<name>"     \
           --site-mail=<email>      \
           --notify
```

This will give you:

* Responsive toolbar
* Adminimal admin theme
* CKEditor with a HTML Purifier based filter and Linkit ready to go
* The Aurora starter theme
* (TODO: move content types to own modules, Basic "Page" content type)

## Theme Instructions

Run these commands
```shell
$ cd docroot/sites/all/themes/contrib
$ yo drupal-theme
```

... and go ahead with your wished setup.

## Project specific notes using brew (br)

### MySQL configuration

File location  `/usr/local/Cellar/mysql/VERSION/my.cnf`

e.g.

```
# YOKAI MySQL settings
max_allowed_packet=512M
```

### PHP configuration

File location `/usr/local/etc/php/VERSION/php.ini`

e.g.

```
;YOKAI PHP settings

; How many GET/POST/COOKIE input variables may be accepted (default 1000)
max_input_vars = 3000

; Maximum amount of memory a script may consume (default 128MB)
; http://php.net/memory-limit
memory_limit = 256M
```

Enhanced by Yokai's, credits to the [Lullabot](https://github.com/Lullabot) Robots&trade;
