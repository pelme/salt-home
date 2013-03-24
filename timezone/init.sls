/etc/timezone:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - source: salt://timezone/etc_timezone
  

