REM Read all the comments ignoring "REM" word at the begining of each line

REM This script will download all the images from the given URL  with certain pattern in URL, it will also delete all the images which are smaller than the minimum size specified in the script. 

REM here is the example of script 
REM install image scraper
REM $ pip install ImageScraper 	

REM image-scraper -s <folder> <URL> --formats jpg

REM <folder> = folder in which images needs to be saved. This will be creaed in the same directory where your script is located.

REM we need to use following command to download all images from single page
REM image-scraper -s myImageFolder1 https://interfacelift.com/wallpaper/downloads/date/any/index1.html --formats jpg

Setlocal EnableDelayedExpansion


REM ECHO Start of Loop



FOR /L %%i IN (1,1,3) DO (
  SET "link=https://interfacelift.com/wallpaper/downloads/date/any/index1.html"
  SET "linkEnd=.html"
  SET myvar=!link!%%i!linkEnd!
  ECHO !myvar!
 REM pause
 image-scraper -s myImageFolder1 !myvar! --formats jpg
  REM ECHO %i
)


FOR %%F IN (.\myjp8\*.jpg) DO ( IF %%~zF LSS 20000  DEL %%F )

REM for /f  "usebackq delims=;" %%A in (`dir /b .myjp1/*.jpg`) do If %%~zA LSS 14728 del "%%A"

REM pause

