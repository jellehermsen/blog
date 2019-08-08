<!--
title: Dart en de Javascriptsoep
categories: nederlands, programming
-->
De afgelopen dagen heb ik even goed gekeken naar
[Dart](http://www.dartlang.org). Deze taal moet als het aan Google ligt in de
komende jaren Javascript gaan vervangen als dominante clienttaal voor het web. 

Webdevelopers zijn veelpotige wezens. Voor een gemiddeld project maak ik al
gauw gebruik van een halfdozijn talen. Html en CSS voor de clientweergave.
Javascript (en tegenwoordig vaak Coffeescript) voor rijke webapplicaties. Aan
de serverzijde gebruik ik veel PHP (soms Java) met regelmatig een extra taal
voor templating, zoals Smarty, of (in het geval van Typo3) Typoscript. Voor de
database gebruik ik daar boven op uiteraard SQL en soms PL/pgSQL voor stored
procedured.

Zonder talenknobbel kom je niet ver als webprogrammeur en om eerlijk te zijn
kijk ik wel eens met milde jaloezie naar collegaprogrammeurs die hun dagen in
een wereldje van puur Java of C++ doorbrengen. Maar ik ben ook wel dol op de
razendsnelle iteratie van technologie van het web. Bovendien maak ik
tegenwoordig steeds meer mobiele apps ook met webtechnieken (dankzij
Cordova/Phonegap en goede ondersteuning voor CSS3/HTML5 in webkit). Wat ik erg
graag wil is een taal die client en serverside met elkaar verbindt, waardoor
het mogelijk is om iets meer analoog aan de prototypische J2EE-developer binnen
één taal en programmeeromgeving te leven.

Dankzij recente ontwikkelingen is het vrij onvermijdelijk dat ik over een paar
jaar aan server- en clientside dezelfde taal gebruik. Node.js is extreem hip
(Javascript op server), in de Haskell hoek gebeuren er allerhande interessante
dingen (Yesod/Fay/Happstack) en ook talen als Opa krijgen volop aandacht.

Het probleem met de enorme wirwar aan nieuwe webtalen is dat het moeilijk in te schatten is wat uiteindelijk succesvol gaat worden. Hoe waanzinnig mooi de ontwikkeling van nieuwe talen ook altijd zijn, uiteindelijk draait het om adoptie daarvan.

Haskell is bijvoorbeeld erg academisch en in tegenstelling tot wat veel
Haskellfans je zullen zeggen, tamelijk moeilijk te leren. Er is een [enorme
lijst van
talen](https://github.com/jashkenas/coffee-script/wiki/List-of-languages-that-compile-to-JS)
die gefundeerd zijn op Javascript, maar denk je serieus dat iedereen over een
paar jaar Opa, of Objective-J gebruikt? De adoptie van zulke talen is moeilijk
en gefragmenteerd. Coffeescript is succesvol, omdat je het razendsnel oppikt en
feitelijk niet meer is dan een mooi gepolijst syntaxlaagje. Alsof je hebt
besloten slagroom op je appeltaart te nemen, het blijft uiteindelijk
appeltaart.

Begrijp me niet verkeerd, ik vind Coffeescript prettig, maar het neemt niet het
javascript probleem weg, namelijk dat de taal een rommeltje is. Tot 10.000
regels code zit ik daar niet zo mee, maar op het moment dat het echt heel groot
wordt en moet schalen, dan wordt het lastig te managen. Natuurlijk zijn hier
allerhande oplossingen voor zoals AngularJS, maar liever switch ik dan naar een
andere taal.

Dart is een goede kandidaat. Op het eerste gezicht lijkt het erg op Java, niet
erg sexy. Het is sterk gericht op object georiënteerd programmeren, maar heeft
in tegenstelling tot Java wel de mogelijkheid om top-level functies toe te
voegen. Harige zaken zoals multiple inheritance zijn vermeden en het heeft
optionele static typing (nu al “feeble typing” gedoopt). Google is duidelijk
erg pragmatisch te werk gegaan en heeft zoveel mogelijk geprobeerd een
allemansvriend te maken. Je kunt dus wel raden wat voor een pissige reviews er
zijn geweest, want er zijn weinig dingen die zoveel programmeurpedanterie
kunnen veroorzaken als een nieuwe taal. 

Ik ben zelf niet van het “code is poëzie kamp”. Zelfs de prachtigste stukken
Scheme of Erlang zijn nog geen Leo Vroman en hoe elegant je ook
functiecompositie kunt toepassen in Scala, het redt het niet bij de verzen van
Vasalis.

Ik drijf af. Wat ik bedoel is dat je een programmeertaal een functioneel nut
heeft, als een strijkijzer, en uiteindelijk niet te veel in de weg moet zitten.
Het is handig als het snel op te pikken is en lijkt op reeds bekende
programmeertalen. Het is mooi als de taal probeert te voorkomen dat de
programmeur zichzelf of een ander makkelijk in de voet schiet en niet als een
vervelende drill sergeant je dwingt regel na regel aan vervelende boilerplate
code uit te poepen.

Dart voldoet hier aan. Je kunt er met grote teams mee werken, het moedigt een
pragmatische en heldere stijl aan en het heeft een paar features die het leven
van een webdev een stuk aangenamer maken.

Die belangrijkste features die mij zo in het oog springen zijn isolates en
futures. Isolates zijn een Erlang-achtige elementen om concurrency te regelen
aan de hand van afgezonderde beestjes die communiceren aan de hand van
boodschappen. Isolates zijn zoals de naam al zegt geïsoleerd en delen dus geen
thread. Als je Dart naar Javascript compiled dan worden ze geïmplementeerd aan
de hand van web workers.  Futures zijn een handige manier om de enorme
callbackkluwen een beetje te handelen. 

Al met al ziet Dart er gewoon vrij goed uit. Het is een beetje de “Gilmore
Girls” van de nieuwe webtalen, maar dat is expres en zou wel eens goed kunnen
zijn voor de populairiteit. Ik zou er weinig bezwaar tegen hebben als ik over
een paar jaar voornamelijk programmeer in deze taal, maar mijn milde mening is
niet bepaald het ontvangst dat Google heeft gekregen. 

Veel programmeurs zijn bang voor een ActiveX-achtig scenario. Dart zal vanwege
de VM die Google in Chrome zal stoppen daar een eersteklas burger zijn en
voorlopig op de andere browsers omgezet worden naar Javascript. Het lijkt me
onrealistisch om te verwachten dat andere browserbakkers, hoe prettig de open
source licentie van de VM dan ook is, dit zullen overnemen. Bovendien was de
manier waarop Google [destijds Dart (toen nog Dash genoemd)
aankondigde](http://siliconangle.com/blog/2011/09/15/google-dart-details-leaked-new-programming-language-seeks-to-replace-javascript/)
niet de meest subtiele. Het zou een nieuwe standaard moeten worden en
Javascript gaan vervangen.

Ik zie zelf weinig problemen in Javascript an sich. Het is geen mooie taal,
maar het heeft nu de status bereikt van de bytecode van het web. Ik denk dat de
push voor Dart als nieuwe taal een stuk eenvoudiger zou zijn als Google dat
volledig had gerespecteerd. Maar goed, als ze maar voldoende programmeurs
achter zich krijgen dan kunnen ze Dart natuurlijk tot nieuwe standaard máken.
Dit is echter wel een staaltje powerplay dat de reus uit Redmond ondertussen
niet meer aandurft. We zullen zien of deze hoogmoed Dart ten val brengt, of
juist als nieuwe top dog boven op de webstack parkeert.
