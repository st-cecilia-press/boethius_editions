



\version "2.24"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")
date = #(strftime "%d-%b-%Y" (localtime (current-time)))

\header {
  title = "In Pace"
  composer = "Alexander Agricola"
  arranger = "Rhau Tricinia no. 25"
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
  \time 4/2
}

global = {
  \key c \major

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
  \incipit {
    \relative c'' {
      \time 2/2
      \gThree
      \key c \major

      r\breve
    }
  }
  
  \global

  % cantus: checked against source
  \relative c'' {
    r\breve r1 g2. a4 b2 c1 b4 a b\breve b2. c4 d2 e2. d4 c1 b4 a b\breve r1 b1 a2 c1 b4 a g2 a g a2. g4 f e d1 r1 
    
    d'1 d d e\breve. f1. e4 d f1 e d1. c2 c1. b4 a4 b1  c1. b4 a4 g2 a e1 r2 
    c'2 b a2. g4 f e d1 c c'\breve  b1. a2 a\breve g1 
    
    a\breve r1 g1 f2 a1 g4 f e\breve r1 b'1 a2 c1 b4 a g\breve r1 d'1 c2 e1 d4 c b2. c4 d2 g,1 f4 e d1 r2 g2 a c b2. c4 
    d2 e2. d4 c1 b2 c\longa*1/2 \section
    
    b\breve b1 b c1. b4 a b2. c4 d2 g,1 f4 e d2 e1 d4 c d1 c2. e4 f2 g 
    g1 r2 a1 g2 f  e4 d e\breve r1 g1 a b c1. b4 a b\breve c1 d g,2 a4 b c1. b4 a b2 g2. f4 g2 a4 g f e d\longa*1/2
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



  \incipit \relative c' {
    \time 2/2
    \clef "mensural-c3"
    \key c \major

    c2.
  }

  % tenor: checked against source
 \relative c' {
    c2. d4 e2 f1 e4 d e\breve e1 e d g\breve e1 f g1. f2 e d g1 r2 c,1 d2 e f e f2. e4 d c b2. c4 
    
    d1 g,1 r1 g'1 g g e d f\breve g1 g,1 c\breve d\breve c\breve r1 
    c1 c d f\breve e\breve. d1 c a b\breve a1. b2 c d1 c2 d1 r1 c1. d2 e f1 e2 
    
    f1 r1 e1. f2 g a1 g2 a2. g4 e2. f4 g2. f4 d2 e1 d4 c b2. a4 b2 c a1 g2 g'2 f4 e d c g'2 c,2 d1 c\longa*1/2  \section
    
    g'\breve g1 g e1 f g2. f4 d2 e1 d4 c b2 c2 b c1 b2 c\breve r1 c1 a1  b1 c\longa r1 d1 e f g1. f2 e1 d e\breve 
    r2 c2 d e2. d4 c b a1 b\longa*1/2
  
  }


  

}

scMusicThreeName = "Bassus"
scMusicThreeInstrument = "trombone"
scMusicThreeClefOriginal = \clef "tenor"
scMusicThreeClefModern = \clef "treble_8"
scMusicThreeClefShawm = \clef "treble_8"
scMusicThreeClefShawmBass = \clef "bass"
scMusicThree = \relative c {
  % Music follows here.
  \incipit \relative c {
    \time 2/2
    \clef "mensural-c4"
    \key c \major

    r\longa
  }

  \global



 \relative c {
   r\longa e\breve g\longa a\breve g r\longa r b\longa c\breve. d c1 b a\breve g r\longa r c\breve. g1  a\breve e  r1 f1. e4 d e1 d\breve r1 a'1 \break
   a2 g4 f g1 f\breve r1 c'1. b4 a b1 a\breve r1 g1 g g1. f4 e f1 g\longa c,\longa*1/2  \section
   
   g'1 g g g r\longa r1 g1 g g a1. g4 f e2. d4 f1. e2 d1 c\longa 
   r\longa g'1 g  a b c c2 b  
   a1 g e f g\longa*1/2 \bar "|."
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
