@echo off

set shared_dir=\\パス\2017\

pushd %shared_dir%

set /p user_input=please input month(ex:10)：
pushd %shared_dir%%user_input%\
start %shared_dir%%user_input%\

rem 指定のパスがなければ、手動でその階層に特定のフォルダを作る
if not exit %shared_dir%%user_input%\ start %shared_dir%%user_input%\

exit
