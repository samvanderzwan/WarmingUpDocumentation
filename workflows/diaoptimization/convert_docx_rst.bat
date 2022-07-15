@echo off
SET "DOCXIN=%Optimize Pipe Sizing.docx"
SET "rst_out=%index.rst"
SET "image_folder=%.\media\*.*"
pandoc -f docx "%DOCXIN%" -t rst -o "%rst_out%"
REM mkdir temp
REM .\..\unzip\bin\unzip "%DOCXIN%" -d .\temp
xcopy .\temp\word\media\*.* "%image_folder%" /Y
REM rmdir /S /Q temp
cd media
magick mogrify -format png *.svg
cd ..
