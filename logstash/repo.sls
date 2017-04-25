# Setup Elastic Repo
{%- from 'logstash/map.jinja' import logstash with context %}

logstash-repo:
  pkgrepo.managed:
    - humanname: Elasticsearch {{ logstash.repoVersion }}
    - name: deb {{ logstash.repo_url }} stable main
    - file: /etc/apt/sources.list.d/elasticsearch.list
    - gpgcheck: 1
    - key_url: https://packages.elastic.co/GPG-KEY-elasticsearch
    - require_in:
      - pkg: logstash
    - clean_file: true
