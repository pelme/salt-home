ftp_user:
  user.present:
    - name: ftp
    - shell: /bin/zsh
    - password: "!"

andreas_ftp_key:
  ssh_auth.present:
    - user: ftp
    - enc: ssh-dss
    - source: salt://andreas/andreas_pelme_iris.pub
    - require:
      - user: ftp
