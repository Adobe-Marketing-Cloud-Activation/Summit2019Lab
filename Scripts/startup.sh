#Pull the most recent version of the Lab File
cd ~/Desktop
git clone https://github.com/Adobe-Marketing-Cloud-Activation/Summit2019Lab.git SummitLab2019-TL07
cd SummitLab2019-TL07
git fetch --all
git pull 

# Launch the localhost pages
open -a Google\ Chrome "http://launch-demo.adobe.com/"
open -a Google\ Chrome "http://localhost/content/we-retail/us/en.html"
open -a Google\ Chrome "http://bit.ly/Lab779"
