
zerigo-user:
  user.present:
    - name: zerigo
    - home: False
    - system: True
    - shell: /bin/false


{% for host in pillar['zerigo']['hosts'] %}
wget 'http://update.zerigo.com/dynamic?host={{ host }}&user={{ pillar['zerigo']['user'] }}&password={{ pillar['zerigo']['password'] }}':
  cron.present:
    - user: zerigo
    - minute: {{ 17 + loop.index }}
    - require:
      - user: zerigo
 
 {% endfor %}
