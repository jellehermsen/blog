<!--
title: Demanding Free Software in a business context
categories: free_software, english
-->
*I originally wrote this for my [FSFE blog](http://blogs.fsfe.org/jelle/).*

**People who hire companies or freelance programmers to write code for them
should demand a Free Software license. This time not even because of ideology,
or the higher goals of Software Freedom. Nope, just because it makes sound
business sense and saves a lot of money!**

There are many non-IT companies who pay other self-employed programmers, or
companies to program for them. Most of the time they have some sort of issue,
or  specific need that's holding back their normal business operation as it is.
So they decide to throw some money at it and voilà, the problem is solved with
some code tailored to their need, sitting cozily on their server. Oblivious of
the code's license, the customer is happy with another fixed "problem", not
aware of the future issues this approach might impel.

Let me describe a typical work day: 
A customer rings me up. After months and months of neglecting their webshop,
they noticed that it's time to do something about the situation. Their Magento
site needs to be upgraded from version 1.3 to 1.6 and since there's no "click
here to upgrade" button in the backend, they need me to do the job. *"No
problemo"*, I say. *"I'll migrate your webshop to my development server
and upgrade it bit by bit. Any issues, or installed modules that resist the
upgrade will present themselves easily and they'll be fixed before you can
pronounce 'gelegenheidsgorgelaar'. After this I'll just migrate everything
back, making sure no orders and sheep are left behind and Bob's your
uncle."*

I wish it was this easy, because more often than not I find myself held back by
proprietary Magento modules that simply refuse upgrading. Sometimes these have
been purchased by the customer, looking for a quick solution, but quite often
they have been coded by a former contractor, to tailor fit their situation.
Finding proprietary software on top of a Free Software stack can be very
annoying, but one situation, which in my view could be fixed easily, strikes me
the most. When people hire programmers they rarely inquire after the license
the code will be under. Most of the time the resulting code (in case of
scripting languages like PHP) will mention no specific license at all, which
means it's thrown in the bottomless pit called "All rights reserved". This is a
shame, because when you need someone else to code on your software stack in the
future they can't build upon this code. If the code breaks when you upgrade
your site  it is rendered utterly useless, and in the meantime you've literally
flushed hundreds of euros down the drain, because all the work needs to be done
again, from scratch. It's like getting a contractor to build you a new
bathroom, only to find you'll have to break it down completely when he's
unavailable to fix your leaky bathtub a year later.

So the next time you get someone to code for your, demand they use a Free
Software license. You'll find that most web developers are actually happy to do
so. Most of them are using Free Software anyway, and you'll find that many of
their websites actually promote the use of Open Source by sporting the
[Open Source Initiative logo](http://www.opensource.org/node/442) (most
of the time not knowing where the image came from). Often they recommend the
use of Wordpress, Drupal, Magento, you name it. It's of great added value to
web developers to use FLOSS, and the business owners could even help them
further by demanding their entire IT-stack is Free Software, head to toe. This
will create a beautiful world for webdevelopers like me. Websites will be easy
to upgrade and change, it will be more easy to swap contractors, and business
owners will have more money, aka time, to watch their little children blow
bubbles!

*Post scriptum:
While I'm at it I also like to take the opportunity to recommend a Free
Software license to use for these endeavors. I would advice demanding the use
of the [GNU Affero General Public License](http://www.gnu.org/licenses/agpl.html).
By using this license you not only ensure that the contractor after your
current contractor will be able to do her work properly, but also the people
after that. You'll make absolutely sure you can't be locked away from the code
you paid for, even if it's moved onto an external server.*
