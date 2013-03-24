
/etc/network/interfaces:
  file.managed:
    - source: salt://network/dual_nic_interfaces
    - template: jinja

service networking restart:
  cmd.wait:
    - watch:
      - file: /etc/network/interfaces

