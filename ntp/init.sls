{% if grains['virtual'] == 'physical'%}
ntp-pkg:
  pkg.installed:
    - name: ntp

ntp-service:
  service.running:
    - name: ntp
    - enable: True
    - require:
      - pkg: ntp
    - watch:
      - file: /etc/ntp.conf
    
/etc/ntp.conf:
  file.managed:
    - source: salt://ntp/ntp.conf
    - require:
      - pkg: ntp
{% endif %}
