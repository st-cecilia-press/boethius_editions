\version "2.24"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")
date = #(strftime "%d-%b-%Y" (localtime (current-time)))

\header {
  title = "Amoroso"
  composer = "Domenico"
  arranger = "Arr: Jadwiga Kryzanowska"
}
ficta = { \once \set suggestAccidentals = ##t }
gThree = {
  \clef "mensural-c1"
  \set Staff.clefGlyph = #"clefs.petrucci.g"
  \set Staff.clefPosition = #0
}

hidebarline = {
  \hide StaffGroup.SpanBar
  s\longa
  \undo \hide StaffGroup.SpanBar
}

fourTwoCutTime = {
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
  \time 4/4
}

global = {
  \key g \dorian

  \fourTwoCutTime

  \override Staff.NoteHead.style = #'baroque


}




scTempo = \tempo 1 = 70
scMinimumSystemSpacingOriginal = #8
scMinimumSystemSpacingModern = #8
scMinimumSystemSpacingShawm = #8
scMinimumSystemSpacingShawmBass = #8
scShawmTransposeFrom = c
scShawmTransposeTo = d


scMusicOneName = "Discantus"
scMusicOneInstrument = "oboe"
scMusicOneClefOriginal = \gThree
scMusicOneClefModern = \clef "treble"
scMusicOneClefShawm = \clef "treble"
scMusicOneClefShawmBass = \clef "treble"
scMusicOne =  {

  \global

  % cantus: checked against source

  \relative c'' {
    \repeat volta 2 {
      bf4. c8 d c bf4 a4. g8 a4 bf bf8 a g4 bf4 f8 g g a16 g \ficta fs4  \time 2/4 g2
    }
    \repeat volta 2 {
      f4. g8 a4 g8 a bf8 a4 g8 a2 bf8 c d4 d8 \ficta cs4  \ficta b8 \time 2/4 d2
    }
    \repeat volta 2 {
      bf8 bf c d f2 bf,8 a4 bf8 a4 g4 a8 bf c d d4 c \time 2/4 d2
    }

    \repeat volta 2 {
      g,4 f f a8 bf16 a g4 g a g8 a bf4 bf a8 f g4 f8 g a bf c bf16 a g8 f
      g8 f g a bf8 a16 g a8 bf c4 c c bf8. a16 g4 g g a d,4. e8 d e \ficta fs4 g2
    }

  }




}

scMusicTwoName = "Tenor"
scMusicTwoInstrument = "oboe"
scMusicTwoClefOriginal = \clef "alto"
scMusicTwoClefModern = \clef "treble_8"
scMusicTwoClefShawm = \clef "treble_8"
scMusicTwoClefShawmBass = \clef "tenor"
scMusicTwo = \relative c' {


  \global



  % tenor: checked against source
  \relative c' {
    \repeat volta 2 {
    g8 a bf a g4 a8 bf c d c bf a4 g g8 a bf a g4 d'8 c bf g a4 g2
    }
    \repeat volta 2 {
     d'4 d c f d d c d8 e f4 a8 g f d e4 d2
    }
    \repeat volta 2 {
     g8 g f e d4 d8 e f4. e16 d c4 d8 e f4 a8 g f d e4 d2
    }

    \repeat volta 2 {
      d4 d c f d d c c d d c8 a bf4 a a a bf bf8 a bf8 c d8 c16 bf a4 
      a a a bf8. c16 d4 d d d8 c bf4. g8 bf4 a4 g2
    }

  }
}

scMusicThreeName = "Bassus"
scMusicThreeInstrument = "trombone"
scMusicThreeClefOriginal = \clef "bass"
scMusicThreeClefModern = \clef "bass"
scMusicThreeClefShawm = \clef "treble_8"
scMusicThreeClefShawmBass = \clef "bass"
scMusicThree = \relative c {
  % Music follows here.

  \global



  \relative c {
    \repeat volta 2 {
      d2 g f4 ef8 d fs4 g d2 g d2 g,
    }
    \repeat volta 2 {
      bf2 c4 d8 c bf2 c4 d8 c d2 a d
    }
    \repeat volta 2 {
      d2 f d f a8 g f e d4 a4 d2
    }

    \repeat volta 2 {
      g,4 a a2 bf4 g c2 d4. e8 f4. g8 a8 g f4 f2
      d4. c8 bf4 c c4. d8 c4 bf g8 a bf4 bf a g8 a bf4 d d g,2
    }

  }




}

scWordsOne =   \lyricmode { }
scWordsTwo =   \lyricmode { }
scWordsThree =   \lyricmode { }
scSpacingOriginal = { s\breve }
scSpacingModern = { s\breve }
scSpacingShawm = { s\breve }


\book {
  \bookOutputSuffix "original"
  \score {
    \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = \scMusicOneName
          midiInstrument = \scMusicOneInstrument
        } <<
          \new Voice { \scSpacingOriginal   }
          \new Voice = "one" { \scMusicOneClefOriginal \scMusicOne }
          \new Lyrics \lyricsto "one" { \scWordsOne }
        >>

        \new Staff \with {
          instrumentName = \scMusicTwoName
          midiInstrument = \scMusicTwoInstrument

        } <<
          \new Voice = "two"  { \scMusicTwoClefOriginal \scMusicTwo }
          \new Lyrics \lyricsto "two" { \scWordsTwo }

        >>
        \new Staff \with {
          instrumentName = \scMusicThreeName
          midiInstrument = \scMusicThreeInstrument

        }
        <<
          \new Voice = "three" { \scMusicThreeClefOriginal \scMusicThree }
          \new Lyrics \lyricsto "three" { \scWordsThree }
        >>
      >>
    }
    \layout {
      indent = 4\cm
      incipit-width = 2\cm
      \context {
        \Staff
        \consists "Ambitus_engraver"
        measureBarType = "'"
      }
    }
    \midi {
      \scTempo
    }

  }

  \paper {
    system-system-spacing.minimum-distance = \scMinimumSystemSpacingModern
    print-page-number = ##f
    print-first-page-number = ##f
    top-margin = 0.5\in
    left-margin = 0.75\in
    right-margin = 0.75\in
    bottom-margin = 0.25\in
    last-bottom-spacing = #'((basic-distance . 4) (padding . 4) (stretchability . 1))
    oddFooterMarkup = \markup {
      \column{
        \fill-line {
          \line {
            \italic \fromproperty #'header:title
            " - Page"
            \fromproperty #'page:page-number-string
          }
        }
        \fill-line { \tiny { \line{© Monique Rio and Aaron Elkiss (CC BY 4.0) | Edition Date: \date } } }
      }
    }
    evenFooterMarkup = \oddFooterMarkup

  }
}

\book {
  \bookOutputSuffix "modern"
  \score {
    \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = \scMusicOneName
          midiInstrument = \scMusicOneInstrument
        } <<
          \new Voice { \scSpacingModern   }
          \new Voice = "one" { \scMusicOneClefModern \scMusicOne }
          \new Lyrics \lyricsto "one" { \scWordsOne }
        >>

        \new Staff \with {
          instrumentName = \scMusicTwoName
          midiInstrument = \scMusicTwoInstrument

        } <<
          \new Voice = "two"  { \scMusicTwoClefModern \scMusicTwo }
          \new Lyrics \lyricsto "two" { \scWordsTwo }

        >>
        \new Staff \with {
          instrumentName = \scMusicThreeName
          midiInstrument = \scMusicThreeInstrument

        }
        <<
          \new Voice = "three" { \scMusicThreeClefModern \scMusicThree }
          \new Lyrics \lyricsto "three" { \scWordsThree }
        >>
      >>
    }
    \layout {
      indent = 4\cm
      incipit-width = 2\cm
      \context {
        \Staff
        \consists "Ambitus_engraver"
        measureBarType = "'"
      }
    }


  }

  \paper {
    system-system-spacing.minimum-distance = \scMinimumSystemSpacingModern
    print-page-number = ##f
    print-first-page-number = ##f
    top-margin = 0.5\in
    left-margin = 0.75\in
    right-margin = 0.75\in
    bottom-margin = 0.25\in
    last-bottom-spacing = #'((basic-distance . 4) (padding . 4) (stretchability . 1))
    oddFooterMarkup = \markup {
      \column{
        \fill-line {
          \line {
            \italic \fromproperty #'header:title
            " - Page"
            \fromproperty #'page:page-number-string
          }
        }
        \fill-line { \tiny { \line{© Monique Rio and Aaron Elkiss (CC BY 4.0) | Edition Date: \date } } }
      }
    }
    evenFooterMarkup = \oddFooterMarkup

  }
}

\book {
  \bookOutputSuffix "shawm"
  \score {
    \transpose \scShawmTransposeFrom \scShawmTransposeTo \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = \scMusicOneName
          midiInstrument = \scMusicOneInstrument
        } <<
          \new Voice { \scSpacingShawm   }
          \new Voice = "one" { \scMusicOneClefShawm \scMusicOne }
          \new Lyrics \lyricsto "one" { \scWordsOne }
        >>

        \new Staff \with {
          instrumentName = \scMusicTwoName
          midiInstrument = \scMusicTwoInstrument

        } <<
          \new Voice = "two"  { \scMusicTwoClefShawm \scMusicTwo }
          \new Lyrics \lyricsto "two" { \scWordsTwo }

        >>
        \new Staff \with {
          instrumentName = \scMusicThreeName
          midiInstrument = \scMusicThreeInstrument

        }
        <<
          \new Voice = "three" { \scMusicThreeClefShawm \scMusicThree }
          \new Lyrics \lyricsto "three" { \scWordsThree }
        >>
      >>
    }
    \layout {
      indent = 4\cm
      incipit-width = 2\cm
      \context {
        \Staff
        \consists "Ambitus_engraver"
        measureBarType = "'"
      }
    }
    \midi {
      \scTempo
    }

  }

  \paper {
    system-system-spacing.minimum-distance = \scMinimumSystemSpacingShawm
    print-page-number = ##f
    print-first-page-number = ##f
    top-margin = 0.5\in
    left-margin = 0.75\in
    right-margin = 0.75\in
    bottom-margin = 0.25\in
    last-bottom-spacing = #'((basic-distance . 4) (padding . 4) (stretchability . 1))
    oddFooterMarkup = \markup {
      \column{
        \fill-line {
          \line {
            \italic \fromproperty #'header:title
            " - Page"
            \fromproperty #'page:page-number-string
          }
        }
        \fill-line { \tiny { \line{© Monique Rio and Aaron Elkiss (CC BY 4.0) | Edition Date: \date } } }
      }
    }
    evenFooterMarkup = \oddFooterMarkup

  }
}

\book {
  \bookOutputSuffix "shawm-bass"
  \score {
    \transpose \scShawmTransposeFrom \scShawmTransposeTo \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = \scMusicOneName
          midiInstrument = \scMusicOneInstrument
        } <<
          \new Voice { s\breve   }
          \new Voice { \scMusicOneClefShawmBass \scMusicOne }
        >>

        \new Staff \with {
          instrumentName = \scMusicTwoName
          midiInstrument = \scMusicTwoInstrument

        } { \scMusicTwoClefShawmBass \scMusicTwo }

        \new Staff \with {
          instrumentName = \scMusicThreeName
          midiInstrument = \scMusicThreeInstrument

        } { \scMusicThreeClefShawmBass \scMusicThree }
      >>
    }
    \layout {
      indent = 4\cm
      incipit-width = 2\cm
      \context {
        \Staff
        \consists "Ambitus_engraver"
        measureBarType = "'"
      }
    }

  }

  \paper {
    system-system-spacing.minimum-distance = \scMinimumSystemSpacingShawmBass
    print-page-number = ##f
    print-first-page-number = ##f
    top-margin = 0.5\in
    left-margin = 0.75\in
    right-margin = 0.75\in
    bottom-margin = 0.25\in
    last-bottom-spacing = #'((basic-distance . 4) (padding . 4) (stretchability . 1))
    oddFooterMarkup = \markup {
      \column{
        \fill-line {
          \line {
            \italic \fromproperty #'header:title
            " - Page"
            \fromproperty #'page:page-number-string
          }
        }
        \fill-line { \tiny { \line{© Monique Rio and Aaron Elkiss (CC BY 4.0) | Edition Date: \date } } }
      }
    }
    evenFooterMarkup = \oddFooterMarkup
  }
}
