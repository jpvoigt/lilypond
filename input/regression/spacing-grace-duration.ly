
\version "2.4.0"
\header {

    texidoc = "Spacing uses the duration of the notes, but disregards
    grace notes for this. In this example, the 8ths around the grace
    are spaced exactly as the other 8th notes.

"
}

\score {  \relative c''
	 \context Voice 
{
     c8[  c8]
    \grace {  b16 }
     c8[ c8]  c8[ c8] 

}

	 \layout { raggedright = ##t}
}

