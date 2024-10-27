



\version "2.24"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")

\header {
  title = "Mon petit coeur"
  composer = "Anon"
  arranger = "Rhau Tricinia no. 70"
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

gThree = {
  \clef "mensural-c1"
   \set Staff.clefGlyph = #"clefs.petrucci.g"
   \set Staff.clefPosition = #0
}

global = {
  \key f \major

  \fourTwoCutTime
  \override Staff.NoteHead.style = #'baroque


}


discantusVoice =  {

  \incipit {
    \relative c' {
      \time 2/2
      \gThree
      \key f \major

      f1
    }
  }
  
  \global
  \clef "G"

  % cantus: checked against source
  \relative c' {
    f1 g a d,2 g1 f4 e f g a2. g4 bf1 a g f2 g g g g f1. f2 g2. f4 e1 d2 d'1 c2 
    bf2 d1 c2 d1 r2 d2 d d f2. e4 d2 c1 bf2. a8 g a2 d, bf'2 bf bf a d,4 e f g a bf c2 bf1 a2 bf1 r1 f g 
    a1 d,2 g2 g f g d g1 a d,2 bf'1 a4 g a g f e d2 g1 f2 \[ g1 e \] r2 f2 g1 a d,2 f g1 a d,2 g2 g f g\longa*1/2 \fine
  }




}

tenorVoice = \relative c' {

  \global

  \clef "G_8"


  \incipit \relative c' {
    \time 2/2
    \clef "mensural-c3"
    \key f \major

    bf1
  }

  % tenor: checked against source
 \relative c' {
  r\breve r1 bf1 c d g,1 c bf2 a4 g a1 g\breve r\breve r2 g'2 g g f1. f2 g2. f4 e1 d\breve. r\longa
  d1 d2 d f1 d ef2 d2 c1 bf2 bf c1 d g, c bf2 a4 g a1 g r2 bf2 c1 d g, c 
  bf2 a4 g a1 g2 bf c1 d g,2 bf c1 d g,1 c bf2 a4 g a1 g\longa*1/2 \fine
  
  }



}

contraVoice = \relative c {
  % Music follows here.
  \incipit \relative c {
    \time 2/2
    \clef "mensural-c4"
    \key f \major

    f1
  }

  \global

  \clef "G_8"



 \relative c {
   r\breve f1 g a d, g f2. e8 d e1 d g\breve r2 d'2 d d c1. c2 d bf a1 g a r2 d2 
   d2 d f2. e4 d2 c bf ef2. d4 c bf c1 bf2 g g g d'2 d bf1 a2 bf2 f r4 f4 g1 a d,1 
   e2 g1 f2 g e d1 g2 bf2. a4 g1 f2 bf2. c4 d2 g,2 f f g e d r4 d4 g1 a d, e2 g1 f2 bf2. c4 
   d2 g,1 f2 g2 e d d g\longa*1/2  \fine
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
  instrumentName = "Contra"
  midiInstrument = "trombone"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \contraVoice }

\score {
  \transpose c d \new StaffGroup {
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
    \tempo 1=70
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