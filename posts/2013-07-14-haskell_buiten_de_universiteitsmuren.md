<!--
title: Haskell buiten de universiteitsmuren
categories: nederlands, programming
-->
[Dit is een inspirerend praatje van Bryan O’Sullivan](http://www.youtube.com/watch?v=ZR3Jirqk6W8), mede-auteur van [Real World Haskell](http://book.realworldhaskell.org/). Hij vertelt hoe hij Haskell gebruikt in zijn eigen startup.  

Wie deze functionele programmeertaal de laatste jaren gevolgd heeft, zal het zijn opgevallen dat het langzaam de academische niche aan het uitklimmen is. Het succes van zowel O’Sullivans boek als [Learn You A Haskell For Great Good](http://learnyouahaskell.com/) en de relatieve hipheid van Rails/Django-achtig webframework [Yesod](http://twit.tv/show/floss-weekly/236) onderstrepen dit.

Ik ben zelf een enorme fan van functioneel programmeren. Het is, sinds dat ik Miranda/Amanda kreeg op de universiteit mijn favoriete paradigma. Maar deze overtuiging heeft vreemd genoeg mijn dagelijkse werkzaamheden nooit kunnen infiltreren, waar het tot op vandaag OOP is dat de klok slaat.

O’Sullivan legt uit hoe hij Haskell gebruikt en geeft handige tips of het voor jou ook een goede optie is. Tevens beantwoordt hij de zorgen dat de Haskellprogrammeurs niet bepaald aan de boom groeien. Naar mijn tevredenheid moet ik zeggen. Ik ga serieus overwegen om Haskell in mijn werk te gaan gebruiken en anderen hierin ook aan te moedigen.

Nog een klein dingetje dat ik graag uit het filmpje wil lichten is “property based testing”. Als je programmeert dan maak je waarschijnlijk gebruik van unit-tests om te checken of je code zich naar behoren gedraagt. De toepasbaarheid van de unit-test is echter beperkt tot de fantasie van de programmeur, en eerlijk gezegd ook uithoudingsvermogen, want bijzonder inspirerend werk is het geenszins. Met property based testing wordt je code automatisch getest aan de hand van een assertion die je zelf invoert. Je code krijgen zo een heel batterij aan vreemde, ongebruikelijke input te verduren. Dit alles om je programma via deze edge-cases op de knieën te krijgen. Extreem nuttig en [niet alleen beschikbaar in Haskell](http://en.wikipedia.org/wiki/QuickCheck).
