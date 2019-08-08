<!--
title: Booting from USB with Grub2 
categories: english, random_geekery
-->
*I originally wrote this for my [FSFE blog](http://blogs.fsfe.org/jelle/).*

I wanted to check out [LiveUSB-OpenBSD](http://liveusb-openbsd.sourceforge.net/), because I'm
pondering about switching to OpenBSD for my daily desktop. However, my stubborn
laptop acted up again and refused to boot from the USB drive I carefully put
OpenBSD on. So I decided to take a trip down search engine lane and see what
different ways there are to boot from a usb. It appears you can easily boot
from a USB drive with Grub2 and here's how to:

- Boot into Grub and press **c** to get into the command line

- If you're running [Trisquel GNU/Linux](http://www.trisquel.info)
like I am,  you'll be confronted with a user/password question you probably
haven't seen before. Don't panic, you are (probably) not an amnesiac. Trisquel
automatically generates a password for you when you install this sweet flower
of the GNU/Linux garden. You can find it in /etc/grub.d/01\_PASSWORD. If you
want to get rid of it you can comment everything in that file and run
*sudo update-grub*. But since I like this whole secure by default
thing - which is one of the reasons I want to check out OpenBSD - I decided to
just use the login name and password mentioned in the file.

- When you're logged in you'll see a shell which you can use to do all kinds of
Grubby goodness. I always thought LILO was good enough for me, but now I'm
beginning to understand why a beast like Grub2 can be nice to befriend. Anyway,
to see all the devices and their partitions you can use the command
*ls*. There I found the device I wanted to boot from (in my case "hd1").

- To actually boot from it I used the following commands:

~~~~~~~
set root=(hd1)
chainloader +1
boot
~~~~~~~

- Bob's your aunt (I don't believe in gender conformity :- )
