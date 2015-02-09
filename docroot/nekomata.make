core = 7.x
api = 2

defaults[projects][subdir] = "contrib"

projects[] = drupal

; Languages
translations[] = de
translations[] = fr

; Modules

; Local
;includes[example] = "example.make"
;includes[example_relative] = "../example_relative/example_relative.make"

; Remote
includes[yokai-minimal] = "https://raw.githubusercontent.com/y-o-k-a-i/drupal-make-files/master/7-x/yokai-minimal.make"
