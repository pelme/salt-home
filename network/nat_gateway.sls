net.ipv4.ip_forward:
  sysctl.present:
    - value: 1

iptables-persistent:
  pkg.installed

service iptables-persistent restart:
  cmd.wait:
    - require:
      - pkg: iptables-persistent
    - watch:
      - file: /etc/iptables/*

/etc/iptables/rules.v4:
  file.managed:
    - mode: 600
    - source: salt://network/nat_gateway_iptables_rules
    - template: jinja
