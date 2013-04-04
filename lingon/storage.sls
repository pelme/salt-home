/storage:
  mount.mounted:
    - device: LABEL=storage
    - fstype: btrfs
    - mkmnt: True
    - opts:
      - defaults,noauto
