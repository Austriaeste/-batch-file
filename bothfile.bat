@echo off

set shared_dir=\\共有フォルダ￥
set mm=%date:~5,2%
set dd=%date:~8,2%

pushd %shared_dir%
start 17%mm%%dd%_アドレス管理簿(東日本).xlsx
start 17%mm%%dd%_アドレス管理簿(西日本).xlsx

exit
