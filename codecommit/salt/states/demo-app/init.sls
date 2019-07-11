{% set APP_VERSION = salt['cmd.run']('cat /tmp/APP_VERSION') %}

include:
  - nginx

demo-app:
  pkg.installed:
    - name: demo-app
    - version: {{ APP_VERSION }}
    - fromrepo: s3-repo
    - require_in:
      - service: nginx
