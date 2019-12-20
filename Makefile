run:; cd website/; php -S localhost:8000
build-test:; cp config.dev config; hasclunk build
build-live:; cp config.live config; hasclunk build
upload:build-live; cp htaccess website/.htaccess; rsync -avh --delete website/ jelle@ma.sdf.org:html/
upload-meta4:build-live; cat redirect.php website/index.html > website/index.php; rm website/index.html; rsync -avh --delete website/ jelle@mab.sdf.org:/meta/www/j/jelle/

