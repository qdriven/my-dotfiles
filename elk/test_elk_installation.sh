#!/bin/sh

curl http://hostname.com:9200/
curl http://hostname.com:9200/_search?pretty
curl http://localhost:9200/_cluster/health?pretty

#elasticsearch
#logstash agent -f ~/logstash/logstash.conf
