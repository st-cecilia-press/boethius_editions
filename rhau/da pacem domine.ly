



\version "2.24"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")

\header {
  title = "Da pacem Domine"
  composer = "Claudin de Sermisy


"
  arranger = "Rhau Tricinia no. 32"
  % Also checked against Attaignant, Liber Motettorum, Book 7, f 15v
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
  \key g \dorian

  \fourTwoCutTime

  \override Staff.NoteHead.style = #'baroque


}




discantusVoice =  {

  \incipit {
    \relative c'' {
      \time 2/2
      \clef "mensural-c1"
      \key g \dorian

     r \longa r \longa g \breve
    }
  }
  
  \global
  \clef "G"

  % cantus: checked against two sources
  \relative c'' {
   r \longa r \longa g \breve f1 g bf\breve c1 bf a1. bf2 c1 bf4 g a bf c bf a g a1 g r2 
   bf2 bf4 a g f g f e d e2 d2. c4 f1 e2 f\breve r1
   bf2. c4 d2 \ficta ef1 d \ficta cs2 d\longa r1 r2 d2 d1 c2 bf c1 bf r2
   f1 f2 e4 d e f g2 g d f \ficta ef1 d2 
   f4 e f g a1 g \ficta fs2 g bf1 bf2 a c bf2. a8 g f4 e f g a2 bf c4 bf a g a1 g
   d d2 c e d2. c4 d e f2 d e g1 \ficta fs2 g\longa \bar "|."
  }

}

tenorVoice = \relative c' {

  \global

  \clef "G_8"


  \incipit \relative c' {
    \time 2/2
    \clef "mensural-c1"
    \key f \major

r \longa g'\breve 

  }

  % tenor: checked against source
 \relative c' {
      r \longa g\breve f1 g bf\breve c1 bf2. a4 g2 d g g f e d2. e4 f g f1 e4 d e1 d4 e f g a2 g1 \ficta fs2 g\breve r2
    bf2 bf4 a g f g2 g f1 bf2. c4 d2 c1 bf2. a4 g f g2 f1 g2. f4 d2 e1 d2 a' a1 g2 
    % in attaignant, this is a dotted minim rather than minim + crochet
    f f4 
    e f g a2 bf f2 g d4 e f g a2 bf1 a2 bf\breve r\breve r2
    bf1 bf2 a c bf a2. g4 f e f2 g a1 g r2 d2 d c e d2. c4 d e f2 d e g1 f2 g bf1 bf2 a c2 bf2. a8 g f4 e f g a2 bf c4 bf a g a1 g\longa \bar "|."
  
  }


  
  % Music follows here.

}

contraVoice = \relative c {
  % Music follows here.
  \incipit \relative c {
    \time 2/2
    \clef "mensural-c4"
    \key f \major

    g'\breve
  }

  \global

  \clef "G_8"



 \relative c' {
g\breve f1 g bf c2 bf1 a2 bf c bf g2. a4 bf g a1 g\breve. r2
c, g' g f4 e d c d1 c4 d e f g2 f1 g2 d1 g\breve. r1 r2
bf2 bf4 a g f g2 g f1 bf2. c4 d2 ef1 d1 c2 d2. c8 bf a1 d,\breve r2
d'2 d1 c2 bf2. a4 g2. f4 d e f2 g f1 r2
bf1 bf2 a4 g a bf c2 c g2. a4 bf c d1 c2 d\longa r2
g,1 g2 f a g4 f g a bf2. a4 f2 g c, e d1 r2
g1 g2 f a g4 f g a bf2. a4 f2 g c, e d1 g\longa
  }



  
}

discantusVoicePart = \new Staff \with {
  instrumentName = "Discantus"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \discantusVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \tenorVoice }

contraVoicePart = \new Staff \with {
  instrumentName = "Bassus"
  midiInstrument = "trombone"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \contraVoice }

\score {
  \new StaffGroup {
    <<
      \discantusVoicePart
      \tenorVoicePart
      \contraVoicePart
    >>
  }
  \layout {
    indent = 4\cm
    incipit-width = 2\cm
    \context {
    \Staff
    measureBarType = "-span|"
  }
  }
  \midi {
    \tempo 1=90
  }
  
}

  \paper {
   system-system-spacing.minimum-distance = #15
       ragged-bottom = ##t
  ragged-last-bottom = ##t
  top-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in
   print-page-number = ##f
  print-first-page-number = ##f
  }

