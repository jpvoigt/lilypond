%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "expressive-marks, keyboards, real-music, unfretted-strings, connecting-notes"

%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa
  texidoces = "
En determinadas situaciones es necesario crear ligaduras de
expresión entre notas que están en voces distintas.

La solución es añadir notas invisibles a una de las voces
utilizando @code{\\hideNotes}.

Este ejemplo es el compás 235 de la Chacona de la segunda Partita
para violín solo, BWV 1004, de Bach.

"
  doctitlees = "Hacer ligaduras entre voces distintas"

%% Translation of GIT committish: f5cfaf8ef4ac347702f554af0944ef0d8396e73a
  texidocfr = "
Dans certaines situations, il peut être nécessaire de lier des notes
appartenant à des voix différentes.

La solution consiste à ajouter une note invisible dans l'une des voix, à
l'aide de la commande @code{\\hideNotes}.

Voici par exemple la mesure 235 de la chaconne de la seconde partita
pour violon solo, BWV 1004, de Bach.

"
  doctitlefr = "Création d'une liaison entre plusieurs voix"

  texidoc = "
In some situations, it may be necessary to create slurs between notes
from different voices.

The solution is to add invisible notes to one of the voices, using
@code{\\hideNotes}.

This example is measure 235 of the Ciaconna from Bach's 2nd Partita for
solo violin, BWV 1004.

"
  doctitle = "Creating slurs across voices"
} % begin verbatim


\relative c' {
  <<
    {
      d16( a') s a s a[ s a] s a[ s a]
    }
    \\
    {
      \slurUp
      bes,16[ s e](
      \hideNotes a)
      \unHideNotes f[(
      \hideNotes a)
      \unHideNotes fis](
      \hideNotes a)
      \unHideNotes g[(
      \hideNotes a)
      \unHideNotes gis](
      \hideNotes a)
    }
  >>
}

