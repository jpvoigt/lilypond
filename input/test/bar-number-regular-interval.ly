\header {
    texidoc = "

Bar numbers can be printed at regular intervals, inside a box or a circle.

" }

\version "2.4.0"

\relative c'{
   \override Score.BarNumber  #'break-visibility = #end-of-line-invisible
   \set Score.barNumberVisibility = #(every-nth-bar-number-visible 4)
   \override Score.BarNumber #'font-size = #2

   \override Score.BarNumber #'print-function
   = #(make-stencil-boxer 0.1 0.25 Text_interface::print)
   \repeat unfold 5 { c1 } \bar "|"

   \override Score.BarNumber #'print-function
   = #(make-stencil-circler 0.1 0.25 Text_interface::print)
   \repeat unfold 4 { c1 } \bar "|."
}


