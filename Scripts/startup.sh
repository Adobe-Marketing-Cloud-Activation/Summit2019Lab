#Pull the most recent version of the Lab File
cd ~/Desktop
git clone https://github.com/Adobe-Marketing-Cloud-Activation/Summit2019Lab.git SummitLab2019-L779
cd SummitLab2019-L779
git fetch --all
git pull 

# Launch the localhost pages
open -a Google\ Chrome "http://launch-demo.adobe.com/"
open -a Google\ Chrome "https://aem.enablementadobe.com/content/we-retail/us/en.html"
open -a Google\ Chrome "http://bit.ly/Lab779"
