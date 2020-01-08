cmd's dotfiles
==============

Use with caution!
In order to use the files move them to home directory prepending them with
a dot.

Somehow tested on Debian and CentOS.

Notes
=====

* mutt:
    - configuration via [mutt-wizard]()
* urxvt:
    - configuration happens via `.Xresources` file. On some systems
      (Enterprise Linux fck yeah!) during startup `xrdb` is invoked with
      `-nocpp` flag which causes out config to not work properly. In such
      cases fix this issue by adding `-cpp /usr/bin/cpp` to `xrdb` invocation
      in `/etc/X11/xinit/xinitrc-common`
    - colors -- solarized light is set up a default option; solarized dark and
      tango are also available
    - addons in urxvt catalog enables to change font size dynamically and
      select links with `alt+u` key combination
* vim:
    - it's wise to use an `alias vi="vim"`
* bashrc:
    - currently I'm checking out fish, so bashrc is abaddoned
