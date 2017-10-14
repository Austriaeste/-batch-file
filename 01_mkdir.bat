@echo off

set share_dir=%USERPROFILE%\Desktop\pwd\
set local_dir=%USERPROFILE%\Desktop\

@rem 空のフォルダとログ取得用テキストを作成
set /P STR_INPUT="作成するフォルダ名を入力してください： "
mkdir %local_dir%%STR_INPUT%\log\
pushd %local_dir%%STR_INPUT%\log\
echo off > grep.txt
echo off > vrf.txt

@rem インプット用資材を格納する
pushd %local_dir%
copy %share_dir%ps.xlsx %local_dir%%STR_INPUT%
start %local_dir%%STR_INPUT%

exit

