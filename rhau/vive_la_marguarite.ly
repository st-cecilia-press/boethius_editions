
\version "2.24"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")
date = #(strftime "%d-%b-%Y" (localtime (current-time)))
\header {
  title = "Vive la Marguarite"
  composer = "Anon"
  arranger = "Rhau Tricinia no. 88"
}

ficta = { \once \set suggestAccidentals = ##t }


hidebarline = {
  \hide StaffGroup.SpanBar
  s\longa
  \undo \hide StaffGroup.SpanBar
}

fourTwoCutTime = {
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
  \time 4/2
}

global = {
  \key c \major
  \fourTwoCutTime
  \override Staff.NoteHead.style = #'baroque
}


scTempo = \tempo 1 = 70
minimumSystemSpacingOriginal = #8
minimumSystemSpacingModern = #8
minimumSystemSpacingShawm = #8
minimumSystemSpacingShawmBass = #8
shawmTransposeFrom = c
shawmTransposeTo = d


musicOneName = "Discantus"
musicOneInstrument = "oboe"
musicOneClefOriginal = \clef "soprano"
musicOneClefModern = \clef "treble"
musicOneClefShawm = \clef "treble"
musicOneClefShawmBass = \clef "treble"
musicOne =  {

  \incipit {
    \relative c'' {
      \time 2/2
      \clef "mensural-c1"
      \key c \major

      g1
    }
  }

  \global


  % cantus: checked against source
  \relative c'' {
    g1 g2 g a a b1 g r2 a2 d d b1 c a2 d2. c4 b a  g2 c2. b4 a g a1 r2 g2
    g2 g a2. g8 a b1 g2 g c2. b4 a2 a g2. f4 e2 g a2. g4 f2 f e1 r2 g2 a4 b c a b2 a2. g4 g1 \ficta fs2 g\breve
    r1 r2 g2 b b a4 g a b c1 b\breve r1 r2 g2 b b a4 g a b c2. b8 a b2. c4 d2 e b1 c b r2 d2 d d b g

    c1 a2 d2. c4 b a g2 c2. b4 a g a2 b2. a4 g f g2 a2. g4 g1 \ficta fs2 g1 r2 d'2 d d b g c1 a2 d2
    d4 c b a g2 c2. b4 a g a2 b2. a4 g f g2 a2. g4 g1 \ficta fs2 g\longa*1/4 \fine
  }




}

musicTwoName = "Tenor"
musicTwoInstrument = "oboe"
musicTwoClefOriginal = \clef "alto"
musicTwoClefModern = \clef "treble_8"
musicTwoClefShawm = \clef "treble_8"
musicTwoClefShawmBass = \clef "tenor"
musicTwo = \relative c' {

  \global



  \incipit \relative c' {
    \time 2/2
    \clef "mensural-c3"
    \key c \major

    r1
  }

  % tenor: checked against source
  \relative c' {
    r1 c1 c2 c d d e1 c1 r2 d2 g g e1 f d2 g2. f4 e d c2 f2. e4 d c d2 e
    e4 d g2. \ficta fs8 e \ficta fs!2 g1 r2 e2 e e f f e g2. f4 e2 d4 c c1 b2 c1 r2 c2 c c d2. c4 b2 a4 g a1 g\breve
    r2 c2 e2 e d4 c d e f1 e2. d8 c d\breve r2 c2 e2 e d4 c d e f2. e8 d e2. f4 g2. f8 e d2 a'2. g4 g1 \ficta fs2
    g1 a r2 g2 g g e c f1 d2 g2. f4 e d c2 f2. e4 d c d2 e2. d4 c b c b a g a1 g\breve r2 g'2 g g
    e2 c f1 d2 g2. f4 e d c2 f2. e4 d c d2 e2. d4 c b c b a g a1 g\longa*1/4 \fine

  }



  % Music follows here.

}

musicThreeName = "Bassus"
musicThreeInstrument = "trombone"
musicThreeClefOriginal = \clef "tenor"
musicThreeClefModern = \clef "treble_8"
musicThreeClefShawm = \clef "treble_8"
musicThreeClefShawmBass = \clef "bass"
musicThree = \relative c {
  % Music follows here.
  \incipit \relative c {
    \time 2/2
    \clef "mensural-c4"
    \key c \major

    r\breve
  }

  \global





  \relative c' {
    r\breve r1 g1 g2 g a a b1 g r2 a2 d d b1 c a2 d2. c4 b a g2 c2. b4 b2 a1
    g1 r2 c,2 c c d1 e c2 c f2. e4 d2 d c1 r2 e2 f a g d e1 d1 r2 g2 b b a4 g a b
    c2. b4 g a b c d1 a1 r2 g2 b b a4 g a b c2. b4 g a b c d1 r2 g,2 g2. a4 b2 c g1 a g
    d'2 d d b g c1 a2 d2. c4 b a g2 c2. b4 a g f e d2 g2. f4 e d e2 f g f4 e d1 r1 d'2 d d b
    g2 c1 a2 d2. c4 b a g2 c2. b4 a g f e d2 g2. f4 e d e2 f g f4 e d1 g\longa*1/4 \fine
  }




}

\book {
  \bookOutputSuffix "original"
  \score {
    \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = \musicOneName
          midiInstrument = \musicOneInstrument
        } <<
          \new Voice { s\breve   }
          \new Voice { \musicOneClefOriginal \musicOne }
        >>

        \new Staff \with {
          instrumentName = \musicTwoName
          midiInstrument = \musicTwoInstrument

        } { \musicTwoClefOriginal \musicTwo }

        \new Staff \with {
          instrumentName = \musicThreeName
          midiInstrument = \musicThreeInstrument

        } { \musicThreeClefOriginal \musicThree }
      >>
    }
    \layout {
      indent = 4\cm
      incipit-width = 2\cm
      \context {
        \Staff
        \consists "Ambitus_engraver"
        measureBarType = "-span|"
      }
    }
    \midi {
      \scTempo
    }

  }

  \paper {
    system-system-spacing.minimum-distance = \minimumSystemSpacingModern
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
          instrumentName = \musicOneName
          midiInstrument = \musicOneInstrument
        } <<
          \new Voice { s\breve   }
          \new Voice { \musicOneClefModern \musicOne }
        >>

        \new Staff \with {
          instrumentName = \musicTwoName
          midiInstrument = \musicTwoInstrument

        } { \musicTwoClefModern \musicTwo }

        \new Staff \with {
          instrumentName = \musicThreeName
          midiInstrument = \musicThreeInstrument

        } { \musicThreeClefModern \musicThree }
      >>
    }
    \layout {
      indent = 4\cm
      incipit-width = 2\cm
      \context {
        \Staff
        \consists "Ambitus_engraver"
        measureBarType = "-span|"
      }
    }


  }

  \paper {
    system-system-spacing.minimum-distance = \minimumSystemSpacingModern
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
    \transpose \shawmTransposeFrom \shawmTransposeTo \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = \musicOneName
          midiInstrument = \musicOneInstrument
        } <<
          \new Voice { s\breve   }
          \new Voice { \musicOneClefShawm \musicOne }
        >>

        \new Staff \with {
          instrumentName = \musicTwoName
          midiInstrument = \musicTwoInstrument

        } { \musicTwoClefShawm \musicTwo }

        \new Staff \with {
          instrumentName = \musicThreeName
          midiInstrument = \musicThreeInstrument

        } { \musicThreeClefShawm \musicThree }
      >>
    }
    \layout {
      indent = 4\cm
      incipit-width = 2\cm
      \context {
        \Staff
        \consists "Ambitus_engraver"
        measureBarType = "-span|"
      }
    }
    \midi {
      \scTempo
    }

  }

  \paper {
    system-system-spacing.minimum-distance = \minimumSystemSpacingShawm
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
    \transpose \shawmTransposeFrom \shawmTransposeTo \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = \musicOneName
          midiInstrument = \musicOneInstrument
        } <<
          \new Voice { s\breve   }
          \new Voice { \musicOneClefShawmBass \musicOne }
        >>

        \new Staff \with {
          instrumentName = \musicTwoName
          midiInstrument = \musicTwoInstrument

        } { \musicTwoClefShawmBass \musicTwo }

        \new Staff \with {
          instrumentName = \musicThreeName
          midiInstrument = \musicThreeInstrument

        } { \musicThreeClefShawmBass \musicThree }
      >>
    }
    \layout {
      indent = 4\cm
      incipit-width = 2\cm
      \context {
        \Staff
        \consists "Ambitus_engraver"
        measureBarType = "-span|"
      }
    }

  }

  \paper {
    system-system-spacing.minimum-distance = \minimumSystemSpacingShawmBass
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
