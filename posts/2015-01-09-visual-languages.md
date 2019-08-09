<!--
title: Visual languages: functional programming in the era of jab and smoosh
categories: english, programming
-->
**Today I gave a talk on visual programming languages at NL-FP day 2015. It was the first FP-day I visited and it felt a bit like coming home for me, I already look forward to next year when it's held on January 8th in Utrecht!**

**Here you find the text of my talk:**

I will skip my introduction on why in fifty years our modern day practice of
computer programming by typing may seem as old-fashioned as using keypunch
machines.

More than 50 years ago, at MIT, Ivan Sutherland developed Sketchpad:
the first program with a graphical user interface. He used the experimental
transistor-based TX-2 computer, which had a nine inch CRT screen and a light
pen. Sutherland used this light pen to allow users to draw directly on
the display, something which had not been done before. He created the necessary
software to allow you to draw primitive objects that can later be recalled,
rotated, scaled and moved. These drawings could be saved on magnetic tape, so
you could edit them at a later time. Sketchpad was truly ground breaking
because it allowed you to directly interact with the system, without having to
type, and it also allowed non-experts to use the a computers.

Sketchpad was used for computer aided design, but you could also use it to
create programs by drawing flow charts. You could draw boxes, containing the
statements, transferring the results along one way or another, allowing the
user to program the computer without first having to transcribe everything onto
punch cards or paper tape.

Ivan Sutherlands work was very important for the future of GUI’s, Computer
Aided Design and Visual Languages. In 1988 he received the Turing Award for
everything he did for computer science.

In the years after his thesis on Sketchpad the work on Visual Languages was
continued by many others. His older brother Bert, for example, wrote a
thesis on a new pictorial language. Influenced by the work on Sketchpad he
created a system on the TX-2 in which the user could draw procedures using
symbols that depict operations. It featured a system for debugging and in his
thesis he elaborately described the flow of data inside these procedures,
making his system one of the first graphical dataflow programming frameworks,
an approach using directed graphs which would be used often hereafter.

Bert Sutherland mentions in his thesis that the specification of graphical
procedures has been a neglected field, and most accomplishments have been in
the field of graphical data. More research was conducted the following years,
but the development in visual languages was hampered by the fact that there
wasn’t a widely used pointing device. This changed when the Macintosh brought
about the widespread adoption of the mouse in the mid eighties. This also
caused the first commercial VPL’s like Prograph to appear, which did
not target computer scientists, or educational purposes, but were meant to make
programming easier, by supplying the user with high level building blocks.

But still, visual languages were almost non existent in the landscape of
programming. There was, however, a certain optimism that this would soon
change. In a 1990 paper in the Journal of Visual Languages and Computing
titled “[Exploring the general purpose
alternative](http://dl.acm.org/citation.cfm?id=1747257)", the authors Glinert,
Kopachet en Mcintyre said the following: "The goal is nothing less than to
expand the programmer's workspace to a multi-modal, animated, 3-D environment.
We predict that this objective will in fact be attained before the turn of the
century."

Obviously this hasn’t happened. But what did happen in the years after this
paper? We got some great VPLs like [Scratch](http://scratch.mit.edu/) and [Alice](http://www.alice.org/index.php). Truly
magnificent tools if you want to teach your child to program without pre-mature
exposure to stuff like object orientation, pointers or monads. If you
want to create your own audio effects pipeline, or a funky 80's revival style
synthesizer, or a midi step sequencer you can save yourself a whole lot of
frustration and wire up all your needs in [Pure Data](http://puredata.info/) or Max/MSP, which is (*trust
me*) way better than rolling you rown in &lt;*fill in your favorite functional
programming language&gt;*, even if you pull in the best available libraries from
[hackage](https://hackage.haskell.org/) or the likes.

There are many, many visual domain specific languages. You want to
process your lab data? You want to control a robot? You
want to build a visual effect chain for your newest Youtube animation?
You want a language that keeps itself simple and stupid enough so even your
livelong &lt;*stuck in middle management, not having a clue*&gt; boss can use it?

These domain specific needs can be checked without a hitch, but when you look
at the popularity of general purpose VPLs they a far cry from even Visual
Basic? Sure there are some broad-purpose VPL's. Microsoft has made one, [MIT
has one](http://appinventor.mit.edu/explore/). There's an open source tool
called "[Programming without coding](http://doublesvsoop.sourceforge.net/)",
and there are others, but none of these are considered to be a serious
programming environments that could be used by a professional. General purpose
VPLs same to be stuck inside specific domains, research and education.

And there are a couple of good reasons for this. First of all, VPL’s, albeit
being developed early, came late to the real party after the first waves of
personal computers hit the market. It took quite a while for computers to be
outfitted with a mouse. This left little room for the graphical alternatives.
But there were also serious issues with visual languages itself.

Take for example scalability. A hello world program might look nice and dandy
, but when you want to make a complex program you will need to be able
to tidy up your act by putting everything neatly into separate parts. In
imperative and functional languages we have pretty much fixed the problem of
scalability, by putting our code in different modules, or classes, or using
namespaces and packages…etc. In visual languages this is more difficult to
achieve. The tendrils of your system are out in the open, and more in your face
than in a written language. If you don’t mitigate this then the cross-program
dependencies you have rear their ugly heads and turn your program into
spaghetti, which visualised looks pretty gruesome.

Then there is the problem of expressiveness. With program languages there often
seems to be a trade-off between ease of use and expressiveness. The more dummy
proof a language, the more pain and sweat it will take to get some serious work
done. Anybody who has done stuff in the Commodore 64 supplied Basic , or
in Java before it supported anonymous classes and generics should know what I
mean. When you look at the many available VPL’s then you will notice that most
of them have settled for ease of use, which is of course fine of you’re into
creating toy projects or sticking to one domain, but in this specific case of
wanting VPL’s to take over the world and converting all programmers in pinching
swiping gurus of the touch screen, this simply won’t suffice.

The last obvious problem has to do with culture. Programmer culture tends to
move slow. It took Java 20 years to get lambda expressions. Something
which has been a great idea ever since Alonzo Church introduced the
Lambda-calculus in the 1930’s and proven to work extremely well in practice
since the implementation of the first Lisp in the 50’s. So advancements in
programming languages propagate slowly, we tend to stick to old languages for a
long time. Sometimes there’s good reason for this, when we prefer stability
above everything else. I guess that’s the reason why there are still poor sods
out there maintaining decades old Fortran codebases.

But besides the languages there’s also a certain conservatism surrounding the
tools with which we write our code. I for example am an avid user of the
VIM-editor and when I’m working in my tiling window manager with terminals
plastering my screen, I almost never need to reach for the mouse. Geeks like me
will need a very good reason to actually pick up that cabled clicky thingy that
lies next to my keyboard when I can instead keep the fingers on the keys.

But still. I think there’s great merit in visual languages. The cultural issues
I mentioned can be solved with time, the other issues by adopting the right
constructs from computer science research and functional programming.
Scalability can be solved, and has been solved, by choosing correct ways to
create modules. Expressiveness can be added by taking cues from homoiconic
languages like lisp that transform beautifully to the graphical space, and
adding higher order functions, purity, laziness.

We, humanoids, are visual animals. To make sense of how an algorithm
works I visualize it. When I try to make sense of a large code project I use
it’s file and directory structure, modules and packages as a visual frame of
reference. If we visualize a project correctly, abstracting away the details
when we don’t need them, and providing an easy way to dive into the nitty
gritty bits when we want, we can find ourselves in a place where it can be
easier to reason about our code and more importantly explain this reasoning to
others. So the scalability issue could in fact be turned upside down and
changed into a strength if we take the right interface designing path of
modular touchy swipey goodness. Something we might need actual interface
designers for. And like they do we would need to break out of the computer
screen and look at the smelly beast sipping red bull in front of it. We would
need to find out which different mental models programmers use, and how we can
transpose those to visual elements. And we will need to figure out the
cognitive dimensions of those visual elements so we can trace out a path for
improvement.

I can list many reasons for trying to create a new VPL that rocks the world,
but one pet peeve of mine are compile-time errors and especially  syntax
errors. Aren’t these the most stupid, time wasting things ever. So I’m typing
all this code and after my IDE doesn’t show any of those curly red thingies I
can safely press Compile, only to be confronted with a load of messages about
all the obvious ways in which I suck, and my program is incorrect. And this is
a totally solved issue, I mean, compile time problems are mostly low hanging
fruit. In the case of Haskell with its nice type system, also to somewhat
higher branches, but still. Why can’t we eliminate these completely? “We can”,
you might say, because I use, Eclipse, or IntelliJ and that IDE happens to be
very smart. WRONG. They stink. Why is it even possible to write something that
is so blatantly wrong, low hanging compiler or lint-checker, fruit? It feels a
bit like driving in a car in which I will have to control the cooling system
manually and when I start the ignition make sure I don’t flood the engine by
quietly murmuring obscenities.

It seems that while the abstraction level of programming languages have
increased, the errors themselves are still stuck in the elevator.
Error-catching wastes more time than ever. Many programmers of dynamic
scripting languages see no problem in actually going through the mind
numbing process of first executing their program in order to check for errors,
and I’m not talking about highly parallel programs that can’t be easily
debugged in another way. Madness!

Anyway, I think that we can create a new visual programming language, by
combining more than fifty years of research with the lessons learned in
functional programming. I have foolishly made a start:

Here’s what we do: We start with a typical boxes and arrows, directed
graph, flowchart kind of language. We add the ability to zoom and hide details
when using a touch screen, and we support laziness, currying, higher order
functions and a module system. We make functions pure by default and add
necessary, but evil side effects by surrounding them with a visual code smell.
Something like monads, but minus the unnecessary but frequent occurring fears
of category theory.

![](/assets/posts/2015-01-09-visual-languages/code1.png)

Taking a cue from Lisp it’s a great idea to have one basic data type and using
that for both code and data. One problem in the written world is that
homoiconic languages tend to look like a too many parenthesis in a love
shack, but work pretty well when visualized as graphs.

![](/assets/posts/2015-01-09-visual-languages/code3.png)

We can switch between different list representations at will  , or draw
new ones if we like. We can also create symbolic expressions by pointing lists
to functions with arrows. We can make a bigger function with nested functions
by drawing a box around them. We can drag lists around and create
immutable copies if this helps in our evil schemes. You can choose to direct a
partial list for further processing, which helps create  a nice head or
car function.

We can add labels to our functions, or larger encompassing structures.
But since we’re working visually, we could do even better.

I will show you how we can implement a map function.

We need a function and a list for our map function. And it's nice if the system automatically adds color to them so we can keep them apart.

![](/assets/posts/2015-01-09-visual-languages/map1.png)

We can make immutable copies and change the list representation to get the granularity we need.

![](/assets/posts/2015-01-09-visual-languages/map2.png)

We'll also make a copy for the function that you supply to MAP.

![](/assets/posts/2015-01-09-visual-languages/map3.png)

We use recursion to call map on the provided function and the tail of the list

![](/assets/posts/2015-01-09-visual-languages/map4.png)

We apply the head of the list to the provided function

![](/assets/posts/2015-01-09-visual-languages/map5.png)

We concatenate the results

![](/assets/posts/2015-01-09-visual-languages/map6.png)

Now, what happens when we give Map an empty list? We will need to check for this, by adding an if statement.

![](/assets/posts/2015-01-09-visual-languages/map7.png)

The if statements returns an empty list when you try to apply map to an empty list, otherwise it will return the result of the concatonation.

![](/assets/posts/2015-01-09-visual-languages/map8.png)

What if we want to add a side-effect to our map function?

![](/assets/posts/2015-01-09-visual-languages/map9.png)

We are launching the missiles as a side-effect and this makes the entire function impure, so our red background propogates to the entire function.

![](/assets/posts/2015-01-09-visual-languages/map10.png)

Here you have it, we have made a higher order recursive function that doesn't like
like complete rubbish. You can travel along the recursive steps if you like by
zooming into the nested map function, enjoying the droste effect, or strange
loop.

Alright, so what now? I'm still figuring out the best way of adding types to
this visual notation. If I want to protect the programmer from silly errors
while he's trying to make them, I will need a strong type system, and
preferably one that is light and stays out of your way if you want to by using
type inference.

I will make an informal description of this language and follow it up by
describing everything formally in typed lambda calculus. After this I will make
a first browser based implementation, using a simple graph reduction approach.

I will post updates on the progress on <a href="http://jelle.sdf.org">on this blog</a>.

![](/assets/posts/2015-01-09-visual-languages/quicksort.png)
While I show you a possible implementaton of quicksort I would like to ask you
to give visual languages a chance in the future. When you find yourself needing
a DSL, or like me you're toying around with language design, maybe you can pick
a visual language instead of a traditional one. I know it's a bit harder,
because you will need to make do without lexer and parser generators , but I'm
confident that slowly but surely we are moving in this direction. At first we
might see smarter IDE's that add graphics to tackle the complexity of large
projects, but I think the touchscreen revolution isn't stopping, and one day we
might find ourselves developing software by touching, swiping, jabbing and
smooshing.
