/storage:
  mount.mounted:
    - device: LABEL=storage
    - fstype: btrfs
    - mkmnt: True
    - opts:
      - defaults,noauto

storage-group:
  group.present:
    - name: storage

ftp-group:
  group.present:
    - name: ftp
