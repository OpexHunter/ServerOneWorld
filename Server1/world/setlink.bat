@echo off
REM Определяем текущую директорию
setlocal enabledelayedexpansion
set "current_dir=%~dp0"

REM Переходим в папку world
cd %current_dir%
cd world

REM Определяем целевые директории для символических ссылок
set "target_stats=..\..\GlobalData\stats"
set "target_playerdata=..\..\GlobalData\playerdata"
set "target_advancements=..\..\GlobalData\advancements"

REM Создаем символические ссылки
mklink /D stats %target_stats%
mklink /D playerdata %target_playerdata%
mklink /D advancements %target_advancements%

echo Символические ссылки успешно созданы!
pause@echo off