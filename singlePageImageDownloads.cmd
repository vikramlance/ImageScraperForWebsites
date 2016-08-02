 
 REM image-scraper -s <folder> <link> --formats jpg
 REM image-scraper -s myjp3 !myLink! --formats jpg
  REM download all the images on a page
  image-scraper -s myImageFolder http://road.cc/content/forum/59367-pictures-your-bike --formats jpg
  
  REM delete all files which are less than size 20kb
  FOR %%F IN (.\myImageFolder\*.jpg) DO ( IF %%~zF LSS 20000  DEL %%F )
  
  REM pause
  REM remove REM from above line if you want to see the out put