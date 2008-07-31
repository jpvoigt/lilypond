%% Do not edit this file; it is auto-generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.11.55"

\header {
  lsrtags = "text"

  texidoc = "
Marks can be printed at the end of the current line, instead of the
beginning of the following line. This is particularly useful when a
mark has to be added at the end of a score -- when there is no next
line.

In such cases, the right end of the mark has to be aligned with the
final bar line, as demonstrated on the second line of this example. 

"
  doctitle = "Printing marks at the end of a line or a score"
} % begin verbatim
\relative c'' {  
  \override Score.RehearsalMark  #'break-visibility = #begin-of-line-invisible
  g2 c
  d,2 a'
  \mark \default
  \break
  
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  g2 b,
  c1 \bar "||"
  \mark "D.C. al Fine"
}
