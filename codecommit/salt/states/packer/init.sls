packer:
  archive.extracted:
    - name: /opt/aws/bin
    - source: 'https://releases.hashicorp.com/packer/1.4.1/packer_1.4.1_linux_amd64.zip'
    - source_hash: b713ea79a6fb131e27d65ec3f2227f36932540e71820288c3c5ad770b565ecd7
    - archive_format: zip
    - enforce_toplevel: False
    - if_missing: /opt/aws/bin/packer

  cmd.wait:
    - name: 'chmod +x /opt/aws/bin/packer'
    - watch:
      - archive: packer

