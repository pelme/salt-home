/safe:
  mount.mounted:
    - device: LABEL=safe
    - fstype: btrfs
    - mkmnt: True
    - opts:
      - defaults,noauto

/ftp:
  mount.mounted:
    - device: LABEL=ftp
    - fstype: btrfs
    - mkmnt: True
    - opts:
      - defaults,noauto

