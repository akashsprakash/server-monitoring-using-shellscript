#!/bin/sh

echo "Enter the url: "
read name
curl -o /dev/null --silent --head --write-out '%{http_code}\n' $name > site-status.txt
visit=`grep -c "200" site-status.txt`
if [ $visit -eq 1 ]; then
	echo "Site is up!"
else
    echo "Site is down!"
fi