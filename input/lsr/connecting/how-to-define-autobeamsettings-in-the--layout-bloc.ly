%%  Do not edit this file; it is auto-generated from LSR!
\version "2.11.23"

\header { texidoc = "
If you need to modify the automatic beaming behaviour (see \"Setting
automatic beam behavior\") in the \layout bloc, here is a simple way to
do it.


" }

\layout {
      \context {
              \DrumStaff
              % set the beam division after 1/4 and after 3/4 (after 2/4 is default)
      autoBeamSettings = #'((cons (cons '(end * * * *) (ly:make-moment 1 4))
      default-auto-beam-settings)
                            (cons (cons '(end * * * *) (ly:make-moment 3 4))
      default-auto-beam-settings)
              )
      }
 }

 up = \drummode {hh8 hh hh hh hh hh hh hh} %%No manual beaming indication, as you can see

 down = \drummode {
      \override Beam #'positions = #'(-5 . -5)
      bd8. bd16 sn16 bd8  bd16 r8 bd8 sn16 bd8. 
 }

 \new DrumStaff {

 <<
      \new DrumVoice { \voiceOne  \up }
      \new DrumVoice { \voiceTwo \down }
>>

 }
