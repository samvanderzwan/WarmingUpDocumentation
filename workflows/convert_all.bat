@echo off
for %%x in (
        buffersizing
        conceptual
        diaoptimization
        existing
        installation
        tempminimization
        marketprices
	toporouting
	usingates
       ) do (
         echo folder is %%x
         cd %%x
         call convert_docx_rst.bat
         cd ..
       )
pause