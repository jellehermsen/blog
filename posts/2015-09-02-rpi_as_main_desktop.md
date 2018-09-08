<!--
title: Raspberry Pi 2 as my main desktop
categories: random_geekery
--> 
A couple of weeks ago I started using a Raspberry Pi 2 as my main desktop. It
was an experiment, suggested by some folks on the #aardvark channel at
irc.aard.xyz, and to my amazement it works great. I rarely have to boot my
monster PC since, saving a lot on my power bills and finding new ways of
increasing  my productivity by using lighter apps at the same time.  In this
blog post I will describe my current hardware and software setup and give some
tips on overclocking this single board computer.

![Photo of my rpi setup]({base_url}assets/pi.jpg)

Hardware
--------
The Rpi 2 is a neat little board with 1GB of Ram and a 900MHz quad core ARM
Cortex A-7 CPU. It is connected to my router through the on-board ethernet port
and I have attached an external 3.5" HDD case which houses a relatively slow
Crucial BX 100 250GB SSD. I chose to use a 3.5" case, since it has its own power
supply.  Most 2.5" cases out there take their power straight from the USB port,
but since the Pi hasn't got power in abundance, I thought this would be the
smarter choice. Since I'm connecting the SSD through a slow USB2 port I could
have also gone with a regular HDD without loss of performance, but I kind of
like the silence and lower energy consumption of the SSD.

The Pi get's its juice from a 2.1 Ampere iPad adapter that came with the first
iPad. I have used the shortest USB cable I could find, to make sure all the
juice gets to the board without too much loss. You really want at least 2 amps
to power your Pi, because you're probably attaching a bunch of USB peripherals,
and you might want to overclock. You can find out that your Pi doesn't have
enough power when the "rainbow square" on the top right of your screen appears.

To enable my overclocking endeavors I have bought a small copper heat-sink, and
attached it to the CPU. The Pi case I got has small air holes on the top and
enough room inside to accommodate the CPU heat-sink.

Overclocking
------------ 
I have moderately overclocked my Pi. I used [Hayden James' excellent
tutorial](http://haydenjames.io/raspberry-pi-2-overclock/) on this subject. It
appears that there's no silver bullet though, because the build quality varies
from Pi to Pi, so you'll just have to test and figure out yourself. It's best to
start conservatively and work your way up. A good way to maximize the load of
your CPU and RAM is by installing 'stress' and running this commands:

~~~~~~~
stress -c 4 --vm-bytes $(awk '/MemFree/{printf "%d\n", $2 * 0.9;}' <
/proc/meminfo)k --vm-keep -m 1
~~~~~~~

This will stress test all your cores and RAM. While doing this you can monitor
the system temperature with:

~~~~~~~
vcgencmd measure_temp
~~~~~~~

You can overclock the Pi by simply modifying /boot/config.txt. My current setup:

~~~~~~~
arm_freq=1000
sdram_freq=450
core_freq=450
over_voltage=8
force_turbo=1
~~~~~~~

This configuration will void your warranty because I have enabled force_turbo,
to make sure that the scaling governor won't throttle down when the Pi is at
rest.  I don't mind that it throttles by default, but there's this little lag
that's especially annoying when you load a web page. The governor usually
throttles just after the site is loaded, making it less useful.

I managed to run the CPU at 1250MHz and both the SDRAM and core at 550, but this
wasn't too stable when working on the Pi for the entire day. You don't want to
overclock the RAM too much, since the chip's specification shows that it was
designed to run at 400MHz. All in all I think that forcing turbo is the biggest
benefit here. 

With these settings my Pi runs perfectly stable and rarely gets hotter than
50&deg;C.

Software
--------
I installed vanilla Raspbian on my Pi using the NOOBS network installer from the
main Raspberry Pi website. I quickly swapped the default desktop for xmonad,
because it's a lot lighter (and I'm a big Haskell fan-girl). I realized I needed
to change some of my computing habits, so I switched to Mutt for e-mail and
Newsbeuter for all my RSS-feeds.

When you start using the Pi full-time you will get a keen eye on how demanding
all the processes are and one thing that will immediately jump at you is how
poorly most browsers perform. This is the reason why the Raspberry Pi Foundation
made modifications to Epiphany to make it a bit more snappy. But still, you
would like to avoid javascript-heavy websites like youtube.com and you'll get
adept at finding alternatives: Youtube-dl for downloading youtube videos for
example.

I tried porting Fennec (Mozilla Mobile) to the Pi, since this ARM-browser runs
great on my cheap Android tablet. However, Mozilla seems to have switched their
focus for Fennec to Android, so I had to rollback 100k of Mercurial commits to
get to a version that still had Linux Desktop support. Long story cut short: I
couldn't get it to compile and didn't want to make it a knight's quest getting
it to run. Instead I switched to using Dillo for quickly looking up things and
I'm using Epiphany and Chromium for web development. Chromium suffices nicely
for debugging the web apps I built for my work and after I overclocked I'm
actually quite happy with its performance.

It's a bit odd that browsers don't run faster, since browsing works fine on
cheap ARM-based tablets. I guess those have a lot of special ARM-optimizations,
and it also helps that they are more closely tight to the GPU for displaying the
latest CSS3 transforms and Javascript-based trickery. It would really be nice if
someone ported the Android webview, or Fennec to the Pi, utilizing OpenGL ES
directly for rendering.

Speaking of OpenGL, you will notice that some games in the default Raspbian repo
run extremely slow. This is because they have been written for the regular
OpenGL and need to be ported to OpenGL ES for acceleration. There are a couple
projects that can help you porting, without having to overhaul the entire
graphics stack.  Check out [Regal](https://github.com/p3/regal) and
[GLShim](https://github.com/lunixbochs/glshim) if you're interested.

I'm trying to port Armagetron to the Pi, because I have a tron server daemon
running on my VPS and would love to continue playing it. That aside, there's a
lot of fun and play to be had on the Pi. There are many emulators available, and
I recommend using Retropie to install standalone versions of the available
emulators. Especially Retroarch is pretty neat.

Quake 1 to 3 also run great on the Pi, as does Dosbox, so there's more than
enough out there for your leisurely Pi usage. Personally I tend to avoid the
official Pi store for software, since it seems to be ridden with GPL-violating
packages.

Software freedom is actually the one thing that bugs me about the Pi. Its
firmware and drivers aren't all free and open source and although you can decide
for yourself how long your freedom beard grows about this subject, it doesn't help
the Linux and BSD support for the Pi. Personally I would love to run NetBSD
on this machine, but without hardware accelerated graphics I don't see the
point. If freedom is really important to you, you might want to wait for the 9
dollar chip by Next Thing Co.

One thing that amazed me is that Libreoffice runs way better than Abiword. I
quite expected the opposite and don't know whether this is something that's caused by
my specific setup, but Libreoffice runs nice and snappy. Anyway, since my pc-swap
fired up the minimizer in me, I'm considering moving all my Libreoffice
templates to LaTeX instead.

Conclusion
----------
The Pi is a nifty bit of kit and more than powerful enough to replace my desktop
for most of my computing. Critics regard it as a mere toy, but it's quite
powerful at that. Fine-tuning the Pi, and finding new and better apps that
replace the bloated ones you were using is pretty sweet and good for your
productivity. I intend to keep using the Pi for most of my work and hope to someday
update it to a 8GB octacore Pi 3.
