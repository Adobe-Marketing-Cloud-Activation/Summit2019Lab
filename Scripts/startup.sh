#!/bin/sh

# Remove the directory if already there to get a fresh copy
if [ -d ~/Desktop/SummitLab2019-TL07 ]
then
    echo "Folder Already Exists"
    rm -Rf ~/Desktop/SummitLab2019-TL07
fi

# Pull the most recent version of the Lab File
echo "Download Lab Assets"
cd ~/Desktop
git clone --recurse-submodules https://github.com/Adobe-Marketing-Cloud-Activation/Summit2019Lab.git SummitLab2019-TL07
cd SummitLab2019-TL07
git fetch --all
git pull 
cd Sites/WeRetail
git submodule init
git submodule update

# Make sure MAMP is pointed at the right location
#echo "Ensure MAMP Configuration"
#/Applications/MAMP/conf/apache/httpd.conf
#sed -i "" '190,200s_DocumentRoot\ .*_DocumentRoot "/Users/bpack/Desktop/SummitLab2019-TL07/Sites/WeRetail"_' /Applications/MAMP/conf/apache/httpd.conf
#sed -i "" '210,225s_<Directory\ ".*">_<Directory "/Users/bpack/Desktop/SummitLab2019-TL07/Sites/WeRetail">_' /Applications/MAMP/conf/apache/httpd.conf

# Restart MAMP
echo "Restart MAMP After Config"
#open /Applications/MAMP/MAMP.app/
#cd /Applications/MAMP/bin
#./stop.sh
#sleep 4s
#./start.sh
#sleep 6s

# Launch the localhost pages
echo "Open Chrome Tabs"
open -a Google\ Chrome "http://launch-demo.adobe.com/"
open -a Google\ Chrome "http://localhost/content/we-retail/us/en.html"
open -a Google\ Chrome "http://bit.ly/Lab779"

exit