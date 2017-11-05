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


@rem ファイルパスを開く
IF EXIST %share_dir%%STR_INPUT% (
start %share_dir%%STR_INPUT%
) ELSE (
mkdir %share_dir%%STR_INPUT%
pushd %share_dir%%STR_INPUT%
start %share_dir%%STR_INPUT%
)

@rem ショートカットをローカルフォルダに格納する
mklink /D %share_dir%%STR_INPUT% %local_dir%%STR_INPUT%

@rem 共有フォルダ上に必要資材を格納する(新規作成用)
copy %local_dir%iii.xlsx %share_dir%%STR_INPUT%\%STR_INPUT%.xlsx
pushd %share_dir%%STR_INPUT%\
start %STR_INPUT%.xlsx

exit



