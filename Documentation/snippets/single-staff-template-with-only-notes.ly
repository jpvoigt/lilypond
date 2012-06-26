%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "really-simple, template"

%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "
Esta plantilla simple prepara un pentagrama con notas, adecuado para
un instrumento solista o un fragmento melódico. Córtelo y péguelo en
un archivo, escriba las notas y ¡ya está!

"
  doctitlees = "Plantilla de un solo pentagrama con notas únicamente"


%% Translation of GIT committish: fa1aa6efe68346f465cfdb9565ffe35083797b86
  texidocja = "
これは音符を持つ譜表を提供するとても簡単なテンプレートであり、ソロの楽器や旋律に適しています。@c
これをファイルにカット＆ペーストして、音符を付け加えれば完了です！
"


%% Translation of GIT committish: 6ae36b6f8a7cf2df5f4e46c3c06820fccd9f35e1
  texidocit = "
Questo modello molto semplice mette a disposizione un rigo con delle note ed è
quindi adatto per uno strumento non accompagnato o per un frammento
melodico. Copialo e incollalo in un file, aggiungi le note e hai finito!

"
  doctitleit = "Modello di rigo singolo con solo note"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Das erste Beispiel zeigt ein Notensystem mit Noten, passend für ein
Soloinstrument oder ein Melodiefragment. Kopieren Sie es und fügen
Sie es in Ihre Datei ein, schreiben Sie die Noten hinzu, und Sie haben
eine vollständige Notationsdatei.
"

  doctitlede = "Vorlage für ein Notensystem"


%% Translation of GIT committish: 3b125956b08d27ef39cd48bfa3a2f1e1bb2ae8b4
  texidocfr = "
Cet exemple simpliste se compose d'une portée agrémentée de quelques
notes.  Il convient tout à fait pour un instrument seul ou un
fragment mélodique.  Recopiez-le dans un nouveau fichier, ajoutez-y
d'autres notes et c'est pret@tie{}!

"
  doctitlefr = "Portée unique avec quelques notes"

  texidoc = "
This very simple template gives you a staff with notes, suitable for a
solo instrument or a melodic fragment. Cut and paste this into a file,
add notes, and you're finished!

"
  doctitle = "Single staff template with only notes"
} % begin verbatim


melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

\score {
  \new Staff \melody
  \layout { }
  \midi { }
}

