<!--
title: GNUstep on Trisquel Taranis
categories: random_geekery, english
-->
*I originally wrote this for my [FSFE blog](http://blogs.fsfe.org/jelle/).*

**If you are like me and you're running the excellent
[Trisquel Taranis](http://www.trisquel.info) you may have noticed that
on AMD64 the vanilla [GNUstep](http://www.gnustep.org) packages from
the repo's are broken. Ubuntu 10.04 has the same problem and I've read that
this also occurs with certain Debian installations. Since a life without
GNUstep  seems pointless or at least very grim I've installed everything you
need to run and compile GNUstep applications manually. Here I'll describe the
[magic
incantations](http://www.gnustep.org/resources/documentation/User/GNUstep/gnustep-howto_toc.html) I used.**

*Disclaimer: the Trisquel installation I used isn't a virgin. I fondled quite a
lot with the package management system, installed a bunch of programs with a
truck load of dependencies, apt-got all my daily necessities and compiled and
installed a bunch of libraries from source. So this might not work for you. It
may or may not blow op your computer, change the way you dress or make your
computer become attracted to a nihilist lifestyle.*

With all the legal work out of the way let's explain what I did to make GNUstep
work.  First off I downloaded all the source I needed from
[http://www.gnustep.org/resources/sources.html](http://www.gnustep.org/resources/sources.html).
At a minimum you'll need all the packages (except the examples package) from
the 'core' directory.

After this I've installed a bunch of requirements:

~~~~~~~
sudo apt-get install build-essential gobjc libffi-dev libicns-dev libtiff4-dev libart-2.0-dev libfreetype6-dev
~~~~~~~

When you're done with that you can start compiling gnustep-make.

Extract the gnustep-make package, go into the directory and:

~~~~~~~
./configure
make 
sudo make install
~~~~~~~

This should work perfectly if you're me and running my particular system and
chanting the right Slayer lyrics while tapping your foot and rotating your
head counter-clockwise (maybe those last steps aren't required, I haven't
tried it without them).

Now listen carefully, whenever you feel like it's a good day to compile and
install a GNUstep application from source you'll need to:

~~~~~~~
. /usr/GNUstep/System/Library/Makefiles/GNUstep.sh
~~~~~~~

You can also put it in your *.profile* when you grow extremely fond of compiler
screensavers like me. Read [GNUsteps howto on environment
setup](http://www.gnustep.org/resources/documentation/User/GNUstep/gnustep-howto_4.html)
for more info.

Now you can *configure/make/sudo make install* gnustep-base. After this
I started *gdomap*, which is an essential daemon used by GNUstep, but
it will also be launched automatically after you launch your first GNUstep
application :

~~~~~~~
sudo /usr/GNUstep/Local/Tools/gdomap -p
~~~~~~~

Next I installed gnustep-gui using the same steps and finally gnustep-back.

With gnustep-back you can choose the graphics library you want to use. Since
GNUstep is highly portable you can use it with many different graphics
libraries. I chose to use libart for no particular reason, it just seems to
work fine :-).

To configure gnustep-back to use libart use:

~~~~~~~
./configure --enable-graphics=art --with-name=art
~~~~~~~

After this you can compile it. To make sure GNUstep uses the right graphics
backend you'll need to:

~~~~~~~
defaults write NSGlobalDomain GSBackend libgnustep-art
~~~~~~~

This should be enough to get you up and running. The next step (pun intended)
might be to try some applications from the examples package you find in the
core directory. This way you can see if everything works like it should. If
you like to do some developing of your own you can simply install
ProjectCenter and Gorm from the dev-apps directory.

I'd love to hear whether or not this works on your box, please comment if it
does, or better yet when it doesn't so I can update this post! 
