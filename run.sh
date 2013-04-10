#!/bin/bash
cur=`pwd`
bundle install
unicorn -c '$pwd/unicorn.rb' -E development -D -l 127.0.0.1:3001
