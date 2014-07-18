%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.17.30"

\header {
  lsrtags = "ancient-notation, specific-notation, tweaks-and-overrides, workaround"

  texidoc = "
As a workaround to get real incipits which are independent from the
main score these are included as a markup into the field normally used
for the instrument name. As for now lyrics can only be added as a
direct markup. It doesn't unfortunately conform with the spacing of the
main lyrics.

"
  doctitle = "Transcription of Ancient music with incipit"
} % begin verbatim


global = {
  \set Score.skipBars = ##t
  \key g \major
  \time 4/4
  %make the staff lines invisible on staves
  \hide Staff.BarLine
  \skip 1*8 % the actual music
  % let finis bar go through all staves
  \override Staff.BarLine.transparent = ##f
  % finis bar
  \bar "|."
}

discantusNotes = {
  \transpose c' c'' {
    \clef treble
    d'2. d'4 |
    b e' d'2 |
    c'4 e'4.( d'8 c' b |
    a4) b a2 |
    b4.( c'8 d'4) c'4 |
    \once \hide NoteHead c'1 |
    b\breve |
  }
}

discantusLyrics = \lyricmode {
  Ju -- bi -- |
  la -- te De -- |
  o, om --
  nis ter -- |
  ra, __ om- |
  "..." |
  -us. |
}

altusNotes = {
  \transpose c' c'' {
    \clef treble
    r2 g2. e4 fis g | % two bars
    a2 g4 e |
    fis g4.( fis16 e fis4) |
    g1 |
    \once \hide NoteHead g1 |
    g\breve |
  }
}

altusLyrics = \lyricmode {
  Ju -- bi -- la -- te | % two bars
  De -- o, om -- |
  nis ter -- ra, |
  "..." |
  -us. |
}

tenorNotes = {
  \transpose c' c' {
    \clef "treble_8"
    R1 |
    R1 |
    R1 |
    r2 d'2. d'4 b e' | % two bars
    \once \hide NoteHead e'1 |
    d'\breve |
  }
}

tenorLyrics = \lyricmode {
  Ju -- bi -- la -- te | % two bars
  "..." |
  -us.
}

bassusNotes = {
  \transpose c' c' {
    \clef bass
    R1 |
    R1 |
    R1 |
    R1 |
    g2. e4 |
    \once \hide NoteHead e1 |
    g\breve |
  }
}

bassusLyrics = \lyricmode {
  Ju -- bi- |
  "..." |
  -us.
}

incipitDiscantus = \markup {
  \score {
    {
      \set Staff.instrumentName = #"Discantus "
      \override NoteHead.style = #'neomensural
      \override Rest.style = #'neomensural
      \override Staff.TimeSignature.style = #'neomensural
      \cadenzaOn
      \clef "neomensural-c1"
      \key f \major
      \time 2/2
      c''1._"IV-" s2  %two bars
      \skip 1*8 % eight bars
    }
    \layout {
      \context {
        \Voice
        \remove "Ligature_bracket_engraver"
        \consists "Mensural_ligature_engraver"
      }
      line-width = 4.5\cm
    }
  }
}

incipitAltus = \markup {
  \score {
    {
      \set Staff.instrumentName = #"Altus "
      \override NoteHead.style = #'neomensural
      \override Rest.style = #'neomensural
      \override Staff.TimeSignature.style = #'neomensural
      \cadenzaOn
      \clef "neomensural-c3"
      \key f \major
      \time 2/2
      r1        % one bar
      f'1._"IV-" s2   % two bars
      \skip 1*7 % seven bars
    }
    \layout {
      \context {
        \Voice
        \remove "Ligature_bracket_engraver"
        \consists "Mensural_ligature_engraver"
      }
      line-width = 4.5\cm
    }
  }
}

incipitTenor = \markup {
  \score {
    {
      \set Staff.instrumentName = #"Tenor  "
      \override NoteHead.style = #'neomensural
      \override Rest.style = #'neomensural
      \override Staff.TimeSignature.style = #'neomensural
      \cadenzaOn
      \clef "neomensural-c4"
      \key f \major
      \time 2/2
      r\longa   % four bars
      r\breve   % two bars
      r1        % one bar
      c'1._"IV-" s2   % two bars
      \skip 1   % one bar
    }
    \layout {
      \context {
        \Voice
        \remove "Ligature_bracket_engraver"
        \consists "Mensural_ligature_engraver"
      }
      line-width = 4.5\cm
    }
  }
}

incipitBassus = \markup {
  \score {
    {
      \set Staff.instrumentName = #"Bassus  "
      \override NoteHead.style = #'neomensural
      \override Rest.style = #'neomensural
      \override Staff.TimeSignature.style = #'neomensural
      \cadenzaOn
      \clef "bass"
      \key f \major
      \time 2/2
      % incipit
      r\maxima  % eight bars
      f1._"IV-" s2    % two bars
    }
    \layout {
      \context {
        \Voice
        \remove "Ligature_bracket_engraver"
        \consists "Mensural_ligature_engraver"
      }
      line-width = 4.5\cm
    }
  }
}

%StaffGroup is used instead of ChoirStaff to get bar lines between systems
\score {
  <<
    \new StaffGroup = choirStaff <<
      \new Voice = "discantusNotes" <<
        \global
        \set Staff.instrumentName = \incipitDiscantus
        \discantusNotes
      >>
      \new Lyrics = "discantusLyrics" \lyricsto discantusNotes { \discantusLyrics }

      \new Voice = "altusNotes" <<
        \global
        \set Staff.instrumentName = \incipitAltus
        \altusNotes
      >>
      \new Lyrics = "altusLyrics" \lyricsto altusNotes { \altusLyrics }

      \new Voice = "tenorNotes" <<
        \global
        \set Staff.instrumentName = \incipitTenor
        \tenorNotes
      >>
      \new Lyrics = "tenorLyrics" \lyricsto tenorNotes { \tenorLyrics }

      \new Voice = "bassusNotes" <<
        \global
        \set Staff.instrumentName = \incipitBassus
        \bassusNotes
      >>
    >>
    \new Lyrics = "bassusLyrics" \lyricsto bassusNotes { \bassusLyrics }
    %Keep the bass lyrics outside of the staff group to avoid bar lines
    %between the lyrics.
  >>

  \layout {
    \context {
      \Score
      % no bars in staves
      \hide BarLine
    }
    % the next three instructions keep the lyrics between the bar lines
    \context {
      \Lyrics
      \consists "Bar_engraver"
      \hide BarLine
    }
    \context {
      \StaffGroup
      \consists "Separating_line_group_engraver"
    }
    \context {
      \Voice
      % no slurs
      \hide Slur
      % Comment in the below "\remove" command to allow line
      % breaking also at those barlines where a note overlaps
      % into the next bar.  The command is commented out in this
      % short example score, but especially for large scores, you
      % will typically yield better line breaking and thus improve
      % overall spacing if you comment in the following command.
      %\remove "Forbid_line_break_engraver"
    }
    indent = 5\cm
  }
}
