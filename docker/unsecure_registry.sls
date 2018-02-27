/etc/docker/daemon.json:
  file.managed:
    - source: salt://dockerimg/etc/docker/daemon.json
    - template: jinja

docker:
  service.running:
    - watch:
      - file: /etc/docker/daemon.json

