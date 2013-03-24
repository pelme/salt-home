
/etc/default/locale:
  file.managed:
    - source: salt://locale/etc_default_locale
   
/etc/locale.gen:
  file.managed:
    - source: salt://locale/locale.gen
    - user: root
    - group: root
    - mode: 644

locale-gen:
  cmd.wait:
    - watch:
      - file: /etc/locale.gen

