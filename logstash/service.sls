# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "logstash/map.jinja" import logstash with context %}
{# TODO - Add reload on config changes #}

kibana-name:
  service.running:
    - name: {{ logstash.service.name }}
    - enable: True
