#! /bin/bash
##
# This script loops through a list of website URLs stored in a file called 'ssl.list',
# runs the bash-ssl-checker tool on each URL, and displays the results.
##

# Loop through each URL in the ssl.list file
for websiteurl in $(cat ./ssl.list) ; do
    # Print a message indicating the start of the check for the current URL
    echo "Loop start for $websiteurl"
    
    # Run the SSL checker script on the current URL
    ./ssl $websiteurl
    
    # Print a message indicating the end of the check for the current URL
    echo "Loop end for $websiteurl"
done
