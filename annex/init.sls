annex:
  user.present:
    - shell: /bin/zsh
    - password: "!"

andreas_annex_key:
  ssh_auth.present:
    - user: annex
    - enc: ssh-dss
    - source: salt://andreas/andreas_pelme_iris.pub
    - require:
      - user: annex
