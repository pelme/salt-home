
/etc/network/interfaces:
  file.managed:
    - source: salt://network/dual_nic_interfaces
    - template: jinja


