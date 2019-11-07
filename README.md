# ELK15: Discover the Zen of Presenting

Workshop zur [Lernen in der digitalen Welt -- E-Learning-Konferenz, FH Bielefeld, 08.09.2015](https://www.fh-bielefeld.de/elearningkonferenz/dokumentation/2015)


## Abstract

Im Workshop wurde das Erstellen von Vorlesungsunterlagen (Folien und Handouts) am Beispiel von
LaTeX und der Beamer-Klasse demonstriert. Dabei werden dank geeigneter Templates und Definitionen
alle Unterlagen aus einer gemeinsamen Quelle erzeugt.

Durch den Wechsel auf Markdown und die Konvertierung mit Pandoc eröffnen sich vor allem für das
Erzeugen von Handouts neue Möglichkeiten, beispielsweise kann man diese im HTML- oder sogar
EPUB-Format erzeugen. Nebenbei spart man sich gerade beim Erstellen von Folien den deutlichen
TeX-Overhead (beim Schreiben; die Generierung der Folien erfolgt mit Pandoc und LaTeX als Backend
plus der Beamerklasse) -- vergleiche [tutorial/example.md](tutorial/example.md) und
[tutorial/example.tex](tutorial/example.tex). Dies wurde im Workshop anschaulich am Beispiel
demonstriert.

Da der Wechsel von TeX auf Markdown fließend stattfand, wurden einige im Laufe der Zeit lieb
gewonnene selbstdefinierte TeX-Befehle und -Formatierungen übernommen. Für das Generieren von
Formaten wie HTML oder EPUB müssen diese mit einem Pandoc-Filter in das passende Format übersetzt
werden. Zum Zeitpunkt der Erstellung der Workshop-Unterlagen in 2015 wurden dafür noch Python-Filter
eingesetzt.


*Nachtrag 2019*: Mittlerweile ist in Pandoc ein Lua-Interpreter eingebaut und die oben beschriebenen
Filter wurden weiterentwickelt und auf Lua umgestellt. Aus der Sammlung der Definitionen, Templates
und Filter ist das Repository [github.com/cagix/pandoc-lecture](https://github.com/cagix/pandoc-lecture)
entstanden. Das Python-Filter-Skript für das damalige Tutorial wurde nachträglich auf Lua umgestellt.


## Unterlagen

*   [Slides](distr/elk15_zenofpresenting.pdf)
*   [Handout (HTML)](distr/elk15_zenofpresenting.html)
*   [Handout (EPUB)](distr/elk15_zenofpresenting.epub)




---

# License

Copyright (c) 2015-2019, Carsten Gips

The content of this project itself is licensed under the
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/),
and the underlying source code used to format and display that content is
licensed under the [MIT license](http://opensource.org/licenses/MIT).
