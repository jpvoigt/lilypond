
\version "2.4.0"
\header {
    texidoc = "Graces notes may have the same duration as the main note."
    }

\score
{  \relative c'' {
     s2 <f>4
    \grace g e4
}

  \layout { raggedright = ##t }
}

