#!/bin/sh
hasclunk build
rm -rf ~/public_html/*
cp -R website/* ~/public_html/
chmod -R 755 ~/public_html/
