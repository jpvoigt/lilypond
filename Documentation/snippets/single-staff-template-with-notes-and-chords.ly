%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.0"

\header {
%% Translation of GIT committish: 4077120c18ac1dc490501b3d7d5886bc93e61a42
  texidocit = "
Vuoi preparare un lead sheet con una melodia e gli accordi? La tua ricerca è finita!

"
  doctitleit = "Modello di rigo singolo con note e accordi"

  lsrtags = "chords, template"


%% Translation of GIT committish: 615cbf212fdaf0b220b3330da417d0c3602494f2
  texidoces = "
¿Quiere preparar una hoja guía de acordes (o «lead sheet») con
melodía y acordes?  ¡No busque más!

"

doctitlees = "Plantilla de pentagrama único con música y acordes"


%% Translation of GIT committish: fa1aa6efe68346f465cfdb9565ffe35083797b86
  texidocja = "
旋律とコードを持つリード譜を欲しくはありませんか？他を見る必要はありません！
"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Wollen Sie ein Liedblatt mit Melodie und Akkorden schreiben?  Hier ist
das richtige Beispiel für Sie!
"

  doctitlede = "Vorlage für eine Notenzeile mit Akkorden"


%% Translation of GIT committish: ceb0afe7d4d0bdb3d17b9d0bff7936bb2a424d16
  texidocfr = "
Vous avez besoin de la partition d'une mélodie avec les accords ?
N'allez pas plus loin !

"

doctitlefr = "Mélodie simple et accords"

  texidoc = "
Want to prepare a lead sheet with a melody and chords? Look no further!


"
  doctitle = "Single staff template with notes and chords"
} % begin verbatim

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  f4 e8[ c] d4 g
  a2 ~ a
}

harmonies = \chordmode {
  c4:m f:min7 g:maj c:aug
  d2:dim b:sus
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>
  \layout{ }
  \midi { }
}

