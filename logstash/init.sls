{%- from 'logstash/map.jinja' import logstash with context %}

include:
  - .repo
  - .install
  - .config
  - .service

