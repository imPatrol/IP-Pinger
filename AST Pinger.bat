@echo off
color D
title AST Pinger
                        
echo ===== AST Pinger By Patrol =====
set /p IP="Host: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Downed.)
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top