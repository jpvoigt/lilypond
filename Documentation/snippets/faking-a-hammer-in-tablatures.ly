%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.2"

\header {
  lsrtags = "specific-notation, workaround, fretted-strings"

%% Translation of GIT committish: b482c3e5b56c3841a88d957e0ca12964bd3e64fa

  texidoces = "
Se puede simular un @qq{hammer} o ligado ascendente con ligaduras de
expresión.

"

  doctitlees = "Simular un hammer o ligado ascendente en una tablatura"

%% Translation of GIT committish: 30339cb3706f6399c84607426988b25f79b4998c
  texidocfr = "
En mode tablature, un @emph{hammer}, ou lié ascendant, peut se simuler à
l'aide d'une liaison.

"
  doctitlefr = "Simulation d'un hammer en tablature"

  texidoc = "
A hammer in tablature can be faked with slurs.

"
  doctitle = "Faking a hammer in tablatures"
} % begin verbatim


\score {
  \new TabStaff {
    \relative c'' {
      \tabFullNotation
      c4( d) d( d)
      d2( c)
    }
  }
}
