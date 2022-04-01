@echo off
SET "DOCXIN=%How to install the WarmingUp Design Toolkit.docx"
SET "rst_out=%index.rst"
SET "image_folder=%.\media\*.*"
pandoc -f docx "%DOCXIN%" -t rst -o "%rst_out%"
mkdir temp
.\..\unzip\bin\unzip "%DOCXIN%" -d .\temp
xcopy .\temp\word\media\*.* "%image_folder%" /Y
rmdir /S /Q temp
cd media
magick mogrify -format png *.svg
cd ..