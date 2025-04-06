#!/usr/bin/env bash

sudo mkdir data 
sudo chown postgres data
ls -l
pwd 
initdb -D data 
pg_ctl -D data -l /tmp/log star

# sudo pip install catboost pandas
psql -c 'CREATE LANGUAGE plpython3u'
psql -c 'CREATE EXTENSION catboost'
psql