# Turn on Source Address Verification in all interfaces to
# prevent some spoofing attacks

net.ipv4.conf.default.rp_filter:
  sysctl.present:
    - value: 1

net.ipv4.conf.all.rp_filter:
  sysctl.present:
    - value: 1

net.ipv4.tcp_syncookies:
  sysctl.present:
    - value: 1
