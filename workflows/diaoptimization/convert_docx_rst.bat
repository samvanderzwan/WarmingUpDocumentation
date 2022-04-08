
SET "DOCXIN=%Optimize Pipe Sizing.docx"
SET "rst_out=%index.rst"
SET "image_folder=%.\media\*.*"
pandoc -f docx "%DOCXIN%" -t rst -o "%rst_out%"
mkdir temp
.\..\unzip\bin\unzip "%DOCXIN%" -d .\temp
xcopy .\temp\media\*.* "%image_folder%" /Y
