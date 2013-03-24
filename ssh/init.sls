ssh-pkg:
  pkg.installed:
    - name: ssh

ssh-service:
  service.running:
    - name: ssh
    - enable: True
    - require:
      - pkg: ssh
    - watch:
      - file: /etc/ssh/sshd_config
    
/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh/sshd_config
    - require:
      - pkg: ssh

