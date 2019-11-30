run:; cd website/; php -S localhost:8000
build-test:; cp config.dev config; hasclunk build
build-live:; cp config.live config; hasclunk build
upload:build-live; cp htaccess website/.htaccess; rsync -avh --delete website/ jelle@ma.sdf.org:html/
