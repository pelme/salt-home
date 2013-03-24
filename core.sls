include:
  - ssh
  - ssh.keys
  - ntp
  - locale
  - timezone
{% if grains['virtual'] == 'physical'%}
  - network
  - network.interface_names
{% endif %}


corepkgs:
  pkg.installed:
    - names:
      - htop
      - lsof
      - less
      - vim-nox
      - zsh
      - git
      - git-annex
      - bind9-host
      - dnsutils
{% if grains['virtual'] == 'physical'%}
      - lvm2
      - parted

{% endif %}

unneededpkgs:
  pkg.purged:
    - names:
      - dictionaries-common
      - iamerican
      - ibritish
      - ienglish-common
      - ispell
      - tasksel
      - tasksel-data
      - dmidecode
      - laptop-detect
      - nano
      - wamerican
