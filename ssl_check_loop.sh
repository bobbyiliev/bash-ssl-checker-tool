#! /bin/bash
for websiteurl in $(cat ./ssl.list) ; do
        echo loop start for $websiteurl
        ./ssl $websiteurl
        echo loop end for $websiteurl
done
