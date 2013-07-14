/safe:
  mount.mounted:
    - device: LABEL=safe
    - fstype: btrfs
    - mkmnt: True
    - opts:
      - defaults,noauto,noatime

/ftp:
  mount.mounted:
    - device: LABEL=ftp
    - fstype: btrfs
    - mkmnt: True
    - opts:
      - defaults,noauto,noatime


/root/mount.sh:
  file.managed:
    - source: salt://lingon/mount.sh
    - mode: 0700
