@echo off

setlocal

set php74=C:\xampp\php\php.exe
set php80=C:\bin\php-8.0.0-Win32-vs16-x64\php.exe
set ruby27=C:\bin\Ruby27-x64\bin\ruby.exe
set ruby30=C:\bin\Ruby30-x64\bin\ruby.exe

cls

echo;
go version
go run circle.go

echo;
echo nodejs
node -v
node circle.js

echo;
%php74% -v
%php74% circle.php

echo;
echo;
%php80% -v
%php80% circle.php

echo;
echo;
%ruby27% -v
%ruby27% circle.rb

echo;
echo;
%ruby30% -v
%ruby30% circle.rb

echo;
echo;
py --version
py circle.py
