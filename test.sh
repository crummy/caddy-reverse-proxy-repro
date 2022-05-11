#!/bin/bash

while true; do
	cp Caddyfile Caddyfile.tmp
	cp Caddyfile2 Caddyfile
	cp Caddyfile.tmp Caddyfile2
	curl -so /dev/null http://localhost/test/angular.min.js -w '%{size_download}\n'
done;