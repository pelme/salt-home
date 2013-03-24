andreas_pelme_iris:
  ssh_auth.present:
    - user: root
    - enc: ssh-dss
    - source: salt://ssh/keys/andreas_pelme_iris.pub
