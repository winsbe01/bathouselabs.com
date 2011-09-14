#!/bin/bash

while read line
do
    mail -s "an update from bathouselabs.com" -a "Content-type: text/html; charset=iso-8859-1\nReply-To: Ben Winston <benjamin@bathouselabs.com>\nFrom: Ben Winston <benjamin@bathouselabs.com>" $line < _site/email.html
done < _site/misc/emails.txt
