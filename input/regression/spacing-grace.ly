
\version "2.4.0"
\header {
  texidoc = "Grace note spacing.  "
}
	
\score {
  \context Voice \relative c'' { \grace {  c16[ d] } c4 }
  \layout { raggedright = ##t}

}

