@echo off

set SHARE_DIR=%USERPROFILE%\Desktop\pwd\
set LOCAL_DIR=%USERPROFILE%\Desktop\

@rem 空のフォルダとログ取得用テキストを作成
set /P STR_INPUT="作成するフォルダ名を入力してください： "
mkdir %LOCAL_DIR%%STR_INPUT%\log\
pushd %LOCAL_DIR%%STR_INPUT%\log\
echo off > grep.txt
echo off > vrf.txt

@rem インプット用資材を格納する
pushd %LOCAL_DIR%
copy %SHARE_DIR%ps.xlsx %LOCAL_DIR%%STR_INPUT%
start %LOCAL_DIR%%STR_INPUT%

exit

