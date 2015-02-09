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
includes[minimal] = "https://github.com/y-o-k-a-i/drupal-make-files/blob/master/7-x/yokai-minimal.make"
