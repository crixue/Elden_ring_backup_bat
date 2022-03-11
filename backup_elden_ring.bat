@echo off

rem 请先修改_ROOT_NAME为您本机的名称，修改_TO要保存文件的位置，修改ZIP_EXE为您压缩文件的具体位置

set _ROOT_NAME=crixue
set _FROM=C:\Users\%_ROOT_NAME%\AppData\Roaming\EldenRing
set _TO=G:\RomaingData
set ZIP_EXE="E:\winRar\WinRAR.exe"
set ELDEN_RING_BACKUP_NAME=ELDEN_RING_BACKUP_%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%

echo %_FROM%

cd %_FROM%
%ZIP_EXE% a -r -m3 "%ELDEN_RING_BACKUP_NAME%.rar" ".\*"
MOVE "%ELDEN_RING_BACKUP_NAME%.rar" "%_TO%"
echo Have backup file to: "%_TO%\%ELDEN_RING_BACKUP_NAME%.rar"
pause