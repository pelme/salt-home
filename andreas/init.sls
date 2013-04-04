andreas:
  user.present:
    - shell: /bin/zsh
    - password: "!"

andreas_andreas_key:
  ssh_auth.present:
    - user: andreas
    - enc: ssh-dss
    - source: salt://andreas/andreas_pelme_iris.pub

andreas_root_key:
  ssh_auth.present:
    - user: root
    - enc: ssh-dss
    - source: salt://andreas/andreas_pelme_iris.pub
