\version "2.24"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")
date = #(strftime "%d-%b-%Y" (localtime (current-time)))
\header {
  title = "Verbum caro factum est: Y la Virgen le dezia"
  composer = "Anon"
  arranger = "Cancionero de Upsala, 1556"
}

ficta = { \once \set suggestAccidentals = ##t }


hidebarline = {
  \hide StaffGroup.SpanBar
  s\longa
  \undo \hide StaffGroup.SpanBar
}



global = {
  \key f \major
  \time 3/1
  \override Staff.NoteHead.style = #'baroque
}


scTempo = \tempo 1 = 150
scMinimumSystemSpacingOriginal = #8
scMinimumSystemSpacingModern = #8
scMinimumSystemSpacingShawm = #8
scMinimumSystemSpacingShawmBass = #8
scShawmTransposeFrom = c
scShawmTransposeTo = d


scMusicOneName = "Discantus"
scMusicOneInstrument = "oboe"
scMusicOneClefOriginal = \clef "mezzosoprano"
scMusicOneClefModern = \clef "treble"
scMusicOneClefShawm = \clef "treble"
scMusicOneClefShawmBass = \clef "treble"
scMusicOne =  {

  \incipit {
    \relative c' {
        \override Staff.TimeSignature.style = #'single-digit
      \time 3/1
      \clef "petrucci-c2"
      \key f \major

      f\breve f1
    }
  }

  \global

  \relative c' {
    f\breve f1 f\breve e1 g\breve g1 a\breve r1 
    
    \repeat volta 2 { a1. g2 f e d1 c d2 e f\breve e1 f\longa s\breve }
    a\breve bf1 a g1. f2 f\breve e1 f\breve f1 r\breve. r r r  f\breve f1 f\breve e1 g\breve g1 
    a\breve g1 a1. g2 f e d1 c d2 e f\breve e1 f\longa \bar "|."
  }

}

scMusicTwoName = "Altus"
scMusicTwoInstrument = "oboe"
scMusicTwoClefOriginal = \clef "alto"
scMusicTwoClefModern = \clef "treble_8"
scMusicTwoClefShawm = \clef "treble_8"
scMusicTwoClefShawmBass = \clef "tenor"
scMusicTwo = \relative c' {

  \global



  \incipit \relative c' {
    \override Staff.TimeSignature.style = #'single-digit
    \time 3/1
    \clef "petrucci-c3"
    \key f \major

    c\breve c1
  }


  \relative c' {
  c\breve c1 d\breve c1 d\breve e1 f\breve r1 
  
  f\breve f1 f\breve f1 d1 c\breve c\longa s\breve
  f1. e2 d1 c bf a f g\breve f f1 r\breve. r r r r r r r
  f'\breve f1 f\breve f1 d c c c\longa
  
  }
}

scMusicThreeName = "Tenor"
scMusicThreeInstrument = "trombone"
scMusicThreeClefOriginal = \clef "tenor"
scMusicThreeClefModern = \clef "treble_8"
scMusicThreeClefShawm = \clef "treble_8"
scMusicThreeClefShawmBass = \clef "bass"
scMusicThree = \relative c {
  \incipit \relative c {
    \override Staff.TimeSignature.style = #'single-digit
    \time 3/1
    \clef "petrucci-c4"
    \key f \major

    f1. g2
  }

  \global

  \relative c' {
    f,1. g2 a1 bf\breve g1 bf\breve bf1 c\breve r1 
    
    c1 a\breve bf1 a\breve bf1 g \breve f \longa s\breve
    r\breve. r r r c'\breve d1 c bf1. a2 g f g\breve f f1 r\breve. r r r  
    a\breve a1 bf1 a\breve bf1 g\breve f\longa
  }
}

scMusicFourName = "Bassus"
scMusicFourInstrument = "trombone"
scMusicFourClefOriginal = \clef "bass"
scMusicFourClefModern = \clef "bass"
scMusicFourClefShawm = \clef "bass"
scMusicFourClefShawmBass = \clef "bass"
scMusicFour = \relative c {
  \incipit \relative c {
      \override Staff.TimeSignature.style = #'single-digit
    \time 3/1
    \clef "petrucci-f"
    \key f \major

    f\breve f1 
  }

  \global

  \relative c {
    f\breve f1 bf,\breve c1 g'\breve g1 f\breve r1 
    
    f1. e2 d c bf1 f' d bf c\breve f,\longa s\breve
    r\breve. r r r f'\breve d1 e2 f g1. f2 f\breve e1 f\breve f1 r\breve. r r r 
    f1. e2 d c bf1 f' d bf1 c\breve f,\longa
  }
}

scWordsOneA =   \lyricmode {
  Ver -- bum ca -- ro fac -- tum est 
  Por -- _  que __ _  to -- _ dos __ _ hos sal -- veis
  Y la vir -- gen__ _ le de -- zi -- a 
  Hy -- o mio que -- os ha -- ri -- a 
  que __ _ no __ _ ten -- go en que os he -- cheys
}

scWordsOneB = \lyricmode {
   _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  Yo rri -- que -- zas __ _ tem -- por -- a -- les
 
  A Je -- su qu'en -- tre_a -- ni -- ma -- les 
  es nas -- _ _ çi -- do se -- _ _  gun -- veys.
}

scWordsTwoA =   \lyricmode {
   Ver -- bum ca -- ro fac -- tum est
   Por -- que to --  dos hos sal -- veis
   Y__ _ la vir -- gen__ _ le de -- zi -- a 
   que no ten -- go_en que os he -- cheys.
}

scWordsTwoB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
   Yo__ _ rri -- que -- zas __ _ tem -- por -- a -- les
    es nas -- çi -- do se -- _ gun -- veys.
} 

scWordsThreeA =   \lyricmode {
    Ver -- _ bum ca -- ro fac -- tum est
      Por -- que to --  dos hos sal -- veis
      Vi -- da de la __ _ vi -- _ da mi -- a
      que no ten -- go_en que_os he -- cheys
}
scWordsThreeB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  No da -- reys u -- _  nos __ _  pa -- ña -- les
  Es nas -- çi -- do se -- gun -- veys.
  
}

scWordsFourA =   \lyricmode {
    Ver -- bum ca -- ro fac -- tum est
      Por -- _  que __ _  to -- _ dos hos sal -- veis
        Vi -- da de __ _  la __ _  vi -- da mi -- a
        que__ _ no ten -- go en que os he -- cheys
    
}
scWordsFourB = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  No da -- reys __ _  u -- _  nos pa -- ña -- les
  Es __ _ nas -- _ çi -- _ do se -- gun -- veys.
}
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
          \new Lyrics \lyricsto "one" { \scWordsOneA }
           \new Lyrics \lyricsto "one" { \scWordsOneB }
        >>

        \new Staff \with {
          instrumentName = \scMusicTwoName
          midiInstrument = \scMusicTwoInstrument

        } <<
          \new Voice = "two"  { \scMusicTwoClefOriginal \scMusicTwo }
          \new Lyrics \lyricsto "two" { \scWordsTwoA }
          \new Lyrics \lyricsto "two" { \scWordsTwoB }

        >>
        \new Staff \with {
          instrumentName = \scMusicThreeName
          midiInstrument = \scMusicThreeInstrument

        }
        <<
          \new Voice = "three" { \scMusicThreeClefOriginal \scMusicThree }
          \new Lyrics \lyricsto "three" { \scWordsThreeA }
            \new Lyrics \lyricsto "three" { \scWordsThreeB }
        >>

        \new Staff \with {
          instrumentName = \scMusicFourName
          midiInstrument = \scMusicFourInstrument

        }
        <<
          \new Voice = "four" { \scMusicFourClefOriginal \scMusicFour }
          \new Lyrics \lyricsto "four" { \scWordsFourA }
             \new Lyrics \lyricsto "four" { \scWordsFourB }
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
          \new Lyrics \lyricsto "one" { \scWordsOneA }
            \new Lyrics \lyricsto "one" { \scWordsOneB }
        >>

        \new Staff \with {
          instrumentName = \scMusicTwoName
          midiInstrument = \scMusicTwoInstrument

        } <<
          \new Voice = "two"  { \scMusicTwoClefModern \scMusicTwo }
          \new Lyrics \lyricsto "two" { \scWordsTwoA }
          \new Lyrics \lyricsto "two" { \scWordsTwoB }

        >>
        \new Staff \with {
          instrumentName = \scMusicThreeName
          midiInstrument = \scMusicThreeInstrument

        }
        <<
          \new Voice = "three" { \scMusicThreeClefModern \scMusicThree }
          \new Lyrics \lyricsto "three" { \scWordsThreeA }
          \new Lyrics \lyricsto "three" { \scWordsThreeB }
        >>
        \new Staff \with {
          instrumentName = \scMusicFourName
          midiInstrument = \scMusicFourInstrument

        }
        <<
          \new Voice = "four" { \scMusicFourClefModern \scMusicFour }
          \new Lyrics \lyricsto "four" { \scWordsFourA }
             \new Lyrics \lyricsto "four" { \scWordsFourB }
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
          \new Lyrics \lyricsto "one" { \scWordsOneA }
          \new Lyrics \lyricsto "one" { \scWordsOneB }
        >>

        \new Staff \with {
          instrumentName = \scMusicTwoName
          midiInstrument = \scMusicTwoInstrument

        } <<
          \new Voice = "two"  { \scMusicTwoClefShawm \scMusicTwo }
          \new Lyrics \lyricsto "two" { \scWordsTwoA }
          \new Lyrics \lyricsto "two" { \scWordsTwoB }

        >>
        \new Staff \with {
          instrumentName = \scMusicThreeName
          midiInstrument = \scMusicThreeInstrument

        }
        <<
          \new Voice = "three" { \scMusicThreeClefShawm \scMusicThree }
          \new Lyrics \lyricsto "three" { \scWordsThreeA }
            \new Lyrics \lyricsto "three" { \scWordsThreeB }
        >>
        \new Staff \with {
          instrumentName = \scMusicFourName
          midiInstrument = \scMusicFourInstrument

        }
        <<
          \new Voice = "four" { \scMusicFourClefShawm \scMusicFour }
          \new Lyrics \lyricsto "four" { \scWordsFourA }
           \new Lyrics \lyricsto "four" { \scWordsFourB }
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
          \new Voice { \scSpacingShawm   }
          \new Voice = "one" { \scMusicOneClefShawmBass \scMusicOne }
          \new Lyrics \lyricsto "one" { \scWordsOneA }
          \new Lyrics \lyricsto "one" { \scWordsOneB } 
        >>

        \new Staff \with {
          instrumentName = \scMusicTwoName
          midiInstrument = \scMusicTwoInstrument

        } <<
          \new Voice = "two"  { \scMusicTwoClefShawmBass \scMusicTwo }
          \new Lyrics \lyricsto "two" { \scWordsTwoA }
           \new Lyrics \lyricsto "two" { \scWordsTwoB }

        >>
        \new Staff \with {
          instrumentName = \scMusicThreeName
          midiInstrument = \scMusicThreeInstrument

        }
        <<
          \new Voice = "three" { \scMusicThreeClefShawmBass \scMusicThree }
          \new Lyrics \lyricsto "three" { \scWordsThreeA }
          \new Lyrics \lyricsto "three" { \scWordsThreeB }
        >>
        \new Staff \with {
          instrumentName = \scMusicFourName
          midiInstrument = \scMusicFourInstrument

        }
        <<
          \new Voice = "four" { \scMusicFourClefShawmBass \scMusicFour }
          \new Lyrics \lyricsto "four" { \scWordsFourA }
           \new Lyrics \lyricsto "four" { \scWordsFourB }
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
