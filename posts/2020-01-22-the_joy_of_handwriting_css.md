<!--
title: The joy of handwriting CSS
categories: web_development, english
-->
Today I came across [PurgeCSS](https://purgecss.com/): a tool that allows you
to rid your website of unused stylesheet rules. It seems to be very useful if
you're knee-deep in external CSS dependencies, brought in by the various
frameworks and plugins used in websites these days. But preferably you don't
need a tool like this at all. This need is typical of the way modern web
development is often conducted. You're slapdash gluing a bunch of tools and
libraries together. Mix it with your CSS framework of choice, say Bootstrap or
Tailwind and after a bit of development you end up with a big ball of
stylesheets, often 100kB or more. And that is when you reach for CSS processors
like Less, minifiers and, yeah, PurgeCSS.

CSS was a godsend when I first started using it in the early noughties. Before
CSS I would design web pages by using tables, cutting up a design document into
small bits and pieces and carefully fitting them inside the table's cells and
rows. Having CSS and a fixed idea on the size of people's monitors allowed me
to move much quicker. I assumed a maximum screen width of 980 pixels and I just
flew, easily recreating pretty much any Photoshop design that was thrown at me.

Unfortunately, or fortunately perhaps, the web grew and so did the amount of
devices and screen sizes I had to support. At the advent of mobile browsers I
could go by with simply making a wholly separate website running under a "m."
subdomain, and fitting everything inside a much smaller 320 pixels box. This
approach was of course not durable at all, since mobile devices started
getting higher and higher resolutions. That's where the new feature of CSS
media queries came in handy. It allowed me to have one single "responsive"
web design that fitted any browser and things were well for a while.

After some time web designs started getting even more complex. Clients started
wanting grid layouts, animations and adaptive designs which offered different
layout choices depending on the screen size and rotation. Fitting all those
needs in the previously handwritten CSS was hard and often required some
JavaScript to assure things went nice and smoothly. The pressure caused by this
evolving web was even harder on teams. Getting all the wood behind one arrow
was tough. You had to have meetings laying down rules and approaches to how you
would structure your stylesheets. Thankfully CSS libraries such as Bootstrap
started emerging. They reset browser defaults and contained a large amount of
standards for design elements. Instead of building everything from the ground
up, you could simply reach for Bootstrap and customize the bits you wanted.

The web however did not stop evolving. I needed to start supporting parallax
effects, nifty sliders with all kinds of effects and widgets that pop in when
you scroll down the page. I started pulling in even more dependencies to do
these things. Slider libraries for the sliders, parallax libraries for the
parallax effects..etc. They all came with their own bits of JavaScript and
their own CSS. To be able to fit this all into the overall design, more things
had to be customized. In the meantime the typical "Bootstrap" look of websites
started getting old. You could smell a Boostrappy site from miles away and
without major modifications they could feel a bit bland.

The effect of all the extra dependencies was also that load-times of web pages
started to go up. Not immediately noticeable on broadband connections, but
surely a problem when using your smartphone or in other places with lesser
connection speeds. This caused the need for minifiers. I needed to reduce the
amount of web requests done for a page and this meant fusing all the CSS files
into one big file and minimizing it, making it impossible to read for viewers,
but much nicer to get across a network.

On another level web developers started using CSS-preprocessors like Less, Sass
and Stylus. This allowed for easier development, adding variables and a better
separation of design parts. What used to be an activity of simply adding your
own styling sauce to a web page, evolved into a very complex declarative
programming of some sort.

The problem with the grown complexity is that CSS wasn't originally designed
for it. I don't blame the designers or the web browser vendors, since they
simply adapted it to the quickly changing times, but CSS has grown to be a very
complex language. I wouldn't like to think how it would be to be a junior
frontend developer staring at the W3 specifications describing the positioning
rules, flexible box layouts, transforms..etc. I can only imagine this to be a
daunting, almost impossible task if you haven't lived through the changes one
by one.

The complexity of CSS lies in its originally simple design. It allows you to
make selections of HTML elements and states to which certain styling rules
apply. You can append to earlier rules or override them. The way in which this
works and which rules take precedence is defined in the cascading order. This
cascade starts with browser defaults, appended by user browser settings and
moves up all the way to the mighty hammer of !important, overriding most things
in its path. The problem with this cascade and the way this works is that it's
pretty hard to keep all the rulesets in your head. Frankly, with most modern
websites, this is utterly impossible and you have to resort to debugger-driven
development. Using the "inspect element" tool of your web browser you can
figure out which rules apply to which element and you can try to find out how
you could add your own modifications.\
For a software developer this practice would be unacceptable. Code needs to be
understandable to a large extent.  You have to have a pretty good idea about
the effects of your work, otherwise it would drive you mad.

As I see it tools like PurgeCSS are a kind of admission of defeat. There's so
much CSS floating around in our websites that we don't even know which rules
apply anymore. Most of it is probably brought in by the handy libraries we used
and there's no way of understanding their specific construction. I really
understand why you would reach for such a tool and I have certainly wanted to
use it in the past. Shocked by the large amount of CSS used by a website and
the poor scores on PageSpeed Insights any sane person would try to alleviate
this.\
However, there's also another way. You could scratch the need for
external CSS bloat altogether if you simply refuse to use those and start
writing your own code again. The development of CSS hasn't stopped and in
recent years has amassed features that were previously either a fools-errand
to implement yourself, or cried out for libraries like Bootstrap. Things like
grids, flexible layouts, parallax effects, animations, you name it. Pretty much
all of those are supported in CSS3 and you don't have to write hundreds of
lines to get them into your website. I feel that thanks to the quick-evolving
nature of web technology we can get all the design niceties our clients desire
without ending up with big balls of minified glued stylesheets. That's exactly
the kind of approach I'm going for these days.

One of the many plus sides of being a freelance web programmer is that I often
have a large amount of freedom picking the tools and languages I want. I'm
usually hired to make most tech decisions myself, not having to fit into the
steady drum beat of prescribed systems, frameworks and dodging stimulating
Scrum sessions with colleagues. Whenever I can I like to use this freedom to
handwrite the CSS for websites I'm working and this is actually kind of fun.

Calling my own stylesheet shots gives me a very nice and orderly feeling. I can
get the design just right without first having to go rounds fighting the
assumptions of a big framework. I can also keep the complexity in check, making
sure that I actually understand what the CSS is doing and where I can find all
the bits I need. Sure, cross-browser compatibility can be a pain, especially
when everything has to show up nicely in Internet Explorer, but it's much
easier to fix the problems you come across when you actually own the problems.

I like to use semantic HTML tags and pair those with clear sectioning in my CSS
file. Combined with all the nifty tricks you can pull you can often reach your
goals in much less lines of code. Bootstrap was nice to have around when
building responsive grids yourself was like pulling teeth, but when flying
solo these days, you don't really need it anymore. 

CSS can be quite maddening and frustrating and its evolutionary design brings
a ton of unwanted baggage. Often it seems like an ill-fit for the types of
websites we're making. However, since an alternative styling language isn't in
the cards and I don't really believe in moving all your styling to JavaScript
logic, we have to make do with the tools we have if we want to stay in web
development.  Instead of giving up and surrendering to the kinds of Boostrap,
Tailwind or Foundation, I believe it's much nicer to travel this road alone.

So next time you're building a website put on your favorite trainers and leave
the marching bands of external CSS libraries on the side of the road and you'll
find it a much nicer journey.
