
del log.txT
Echo SETTING DATE>>log.txt
::: Begin set date

for /f "tokens=1-4 delims=/-. " %%i in ('date /t') do (call :set_date %%i %%j %%k %%l)
goto :end_set_date

:set_date
if "%1:~0,1%" gtr "9" shift
for /f "skip=1 tokens=2-4 delims=(-)" %%m in ('echo,^|date') do (set %%m=%1&set %%n=%2&set %%o=%3)
goto :eof


:end_set_date
::: End set date

ECHO DATE SET >>log.txt

echo DATE SET AS YEAR %yy% MONTH %mm%; DAY %dd%; >>log.txt

::: Begin set file set>>Log.txt
echo Username@Domain.com>creds.txt
echo Password>>creds.txt
echo get "export_all_products_%yy%-%mm%-%dd%.csv%">>creds.txt
echo quit>>creds.txt
::: End set file


FTP -s:creds.txt domain.com>>log.txt

del creds.txt>>Log.txt




ECHO SCRIPT CREATED BY CMH SOLUTIONS WWW.CMHSOL.COM FOR SUPPORT PLEASE EMAIL US AT: chanus@cmhsol.com >>Log.txt