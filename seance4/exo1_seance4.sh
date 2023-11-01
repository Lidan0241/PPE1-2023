#!/bin/bash
cd /Users/lydia/Ann/*
classement=$(cat *.ann | egrep "Location" | cut -f 3 | sort | uniq -c | sort -nr | head 15)
echo "$classement"