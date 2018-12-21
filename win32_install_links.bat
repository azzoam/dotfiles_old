@echo off

if exist %homedrive%%homepath%\_vimrc (
    del %homedrive%%homepath%\_vimrc
)
mklink %homedrive%%homepath%\_vimrc %cd%\vim\vimrc
