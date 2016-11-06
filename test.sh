#!/bin/sh
hasclunk build
rm -rf ~/public_html/test/
cp -R ~/blog/website/ ~/public_html/test/
chmod -R 755 ~/public_html/
