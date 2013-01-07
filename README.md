ZwO-TopFlop-Bild-Generator
==========================
In den Jahresrückblicken des Gaming Blogs Zockwork Orange beschreibt jeder Redakteur unter anderem sein größtes Spielehighlight (Top) und seine größte persönliche Enttäuschung (Flop). Das ganze wird garniert mit einer Bildmontage, die folgendermaßen aussieht: 

![ScreenShot](https://raw.github.com/yesnocancel/zwo-topflop/master/output.jpg)

Heißt: Pro Redakteur zwei Screenshots zusammen pasten und beschriften und auf die richtige Größe bringen. Nervt. Kann man automatisieren. Zum Beispiel mit einem hingehackten Ruby-Skript. Falls es irgendwer gebrauchen kann: Viel Spaß.

Getestet mit Ruby 1.9.3

Requirements
------------
* ImageMagick

  e.g.: brew install imagemagick, apt-get install imagemagick, ...

* Tupalo Mini Magick:

  gem install tupalo-mini_magick

Usage
-----
  
  chmod u+x ./zwotopflop.rb
  ./zwotopflop.rb TopBild.jpg FlopBild.png

Bildformate müssten egal sein, halt alles, was ImageMagick frisst.

