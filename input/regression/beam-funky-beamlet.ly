
\version "2.4.0"
\header {

texidoc=" Funky kneed beams with beamlets also work. The beamlets
should be pointing to the note head.
"

}


\score {
  \relative c' {
     c16 c''8 c,,16
     c16 c''8 c16
     c16 c,,8 c16          
     
  }
  \layout { raggedright = ##t}
}
	  
