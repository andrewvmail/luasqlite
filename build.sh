#!/bin/bash

echo build

wget http://lua.sqlite.org/index.cgi/zip/lsqlite3_fsl09y.zip
unzip lsqlite3_fsl09y.zip


cd lsqlite3_fsl09y/
cp -r ../lsqlite3.c.patch .
patch < lsqlite3.c.patch 
luarocks make ./lsqlite3-0.9.5-1.rockspec SQLITE_DIR=/usr/local/opt/sqlite3/
