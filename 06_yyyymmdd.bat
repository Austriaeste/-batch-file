@echo off

rem クリップボードビューアを起動
cd C:\Program Files (x86)\ShoClipboardViewer
start ShoClipboardViewer

rem 日付を取得
set YYYYMMDD=%DATE:/=%

rem 日付を出力
set /P DUMMY="%YYYYMMDD%"<NUL|clip

exit