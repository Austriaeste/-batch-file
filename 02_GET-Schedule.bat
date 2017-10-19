@echo off

@rem 共有フォルダ上のファイルをローカルで開く
set YYYY=%date:~0,4%
set MM=%date:~5,2%
set shared_dir=\\詳細オーダー
set shared_dir1=\\稼働表
set clone_dir=%USERPROFILE%\Desktop\スケジュール\
set today_YYYYMMDD=%date:~0,4%%date:~5,2%%date:~8,2%


@rem 同期(詳細オーダー)
if not exist %clone_dir%%YYYY%\%MM%\%today_YYYYMMDD% mkdir %clone_dir%%YYYY%\%MM%\%today_YYYYMMDD%
copy /Y %shared_dir%\詳細オーダー(1710).xlsx %clone_dir%%YYYY%\%MM%\詳細オーダー(1710).xlsx


@rem 開く
move %clone_dir%%YYYY%\%MM%詳細オーダー(1710).xlsx %clone_dir%%YYYY%\%MM%%YYYY%\%MM%\%today_YYYYMMDD%
pushd %clone_dir%%YYYY%\%MM%\%YYYY%\%MM%\%today_YYYYMMDD%
start 詳細オーダー(1710).xlsx



@rem 同期(稼働表)
if not exist %clone_dir%%YYYY%\%MM% mkdir %clone_dir%%YYYY%\%MM%\%today_YYYYMMDD%
copy /Y %shared_dir1%\稼働表（%today_YYYYMMDD%).xlsx %clone_dir%%YYYY%\%MM%\稼働表（%today_YYYYMMDD%).xlsx

@rem 開く
move %clone_dir%%YYYY%\%MM%\稼働表（%today_YYYYMMDD%).xlsx %clone_dir%%YYYY%\%MM%\%today_YYYYMMDD%
pushd %clone_dir%%YYYY%\%MM%\%today_YYYYMMDD%
start 稼働表（%today_YYYYMMDD%).xlsx

exit