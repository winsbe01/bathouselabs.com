#!/bin/bash

while read line
do
    mail -s "an update from bathouselabs.com" -a "Content-type: text/html; charset=iso-8859-1\nFrom: Ben Winston <benjamin@bathouselabs.com>" $line < email.html
done < _site/misc/emails.txt
