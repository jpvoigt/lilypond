%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.11.55"

\header {
  lsrtags = "rhythms, breaks"

  texidoc = "
By default, beams can't be printed across line breaks.  This behavior
can be overridden by setting the @code{breakable} property. 

"
  doctitle = "Beams across line breaks"
} % begin verbatim
\layout { ragged-right = ##t }
\relative c'' {
  \override Score.Beam #'breakable = ##t
  \time 3/16
  c16[ d e \break
  f16] r r 
}
