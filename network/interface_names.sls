
/etc/udev/rules.d/70-persistent-net.rules:
  file.managed:
    - mode: 600
    - source: salt://network/udev_persistent-net.rules
    - template: jinja

