## Warnings
If my code doesn't work on your computer, I am very sorry. I've had to jump through numerous hoops to get this working on a windows. You may have to change some things to make this work on another machine (that's not windows) such as changing the paths symbols (//data instead of /data). If there are any difficulties using my scripts, please email me at pahongle@gmail.com. Thankfully, you can still look through my make file and general github to grade me, even if my code doesn't work. I am also providing a youtube link to see what it's supposed to look like when the make does work. Please see: https://youtu.be/jPlVrZ-fMUs

## About
To use this analysis code, simply run the R script in terminal or in RStudio. You will only need the package tidyverse. Files for the cleaned data, figure 1, and report are included in the repository. However feel free to delete them from their respective folders (data, figures, and reports) if you would like. Also, since I am running this on Windows, my initial make file will not have chmod lines because windows cmd doesn't require this. However, I will be adding this into the github version because I assume you will be working on Mac/ Ubuntu. If you are working on windows like me, feel free to remove these chmod lines. 

## Clean and Clear Organized Structure
All scripts needed to make the report are in the R folder. Figures will be populated in the figures folder. Raw data is in the raw_data folder and cleaned data will end up in the data folder. Reports are generated into the reports folder. 

## Make File
The make file contains all three rules for make help, make install, and make report. These are explained further below. There is an additional warning for make install depending on your computer. 

## Instructions
To make the report, simply type in "make" or "make report" after navigating to this folder. "Make install" will install the necessary libraries. **HOWEVER**, some PCs don't give you permission to install this way. The only package you need is tidyverse, so you may need to install it manually despite there being a rule to install. Lastly, there is a rule "make help". Type this in to get some helpful documentation regarding the make file. 