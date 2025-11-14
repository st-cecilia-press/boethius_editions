\version "2.24.1"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")

\header {
  title = "Czu aller Zeÿt"
  composer = "Anon"
  arranger = "Glogauer Liederbuch no. 224"
}

ficta = { \once \set suggestAccidentals = ##t }

fourTwoCommonTime = {
    \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
    \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C44"
    \time 4/2
}


global = {
  \key c \major

  \fourTwoCommonTime
  \hide Staff.BarLine
  \override Staff.NoteHead.style = #'baroque


}

globalEnd = {
  \undo \hide Staff.BarLine
  \bar "|."
}

discantusVoice = {

  \incipit { \clef "mensural-c1" c''1 b'2 b' }

  \global

  \clef G
    \relative c'' {
  c1 b2 b a2. g8 f e1 f g e2 c d1 c r|
  c' b2. a4 b2 c d1 | e\breve |
  d2 f e \[ d1 c \] b2 c1 b\breve\fermata
  c1 b2 c d1 e e2 d4 c b1 c2 \[ b1 a \] \ficta gs2 a1 r
  a1 a a2 g4 f e1 d a'2. b4 c2 b4 a2 g4 g1 \ficta fs2 g\breve
  r2 g2 a2. b4 c2. b4 c2 d \ficta bf1 \[ a d \] c2 b
  a \[ b1 a \] g2 a1 g2 f1 e2 f\breve
  r2 c'1 b2 a c b d c4 d e2. d4 c1 b2
  << 
     { c\longa }
     {   
         s\breve 
         \hide StaffGroup.SpanBar 
         s\breve 
         \undo \hide StaffGroup.SpanBar 
     }
  >>
   }


  \globalEnd


}

tenorVoice =  {
  \incipit {  \clef "mensural-c3" d'1 e'2 e' }

  \global

  \clef "G_8"

 \relative c' {
  c1 d2 d c\breve a1 g a4 b c1 b2 c\breve.
  d1. e2 f1 g\breve f1 g e2 c d1 c g'\breve\fermata
  e1 d2 e f1 e\breve g1 c,2 e d c b1 a\breve r1 d\breve c1
  \[ d1 f \] e2 d c b \[ a1 g \] r2 g a b c1
  c2 d e f g1 f2 d1 f2 e d c d1 c2 \ficta bf1 a2 c1 a2 g1 f r
  f'1 e2 d f e g2. e4 f2 g2. f4 e2 d1 c\longa
}

  \globalEnd
  % Music follows here.

}

contraVoice =  {
  % Music follows here.
  \incipit { \clef "mensural-c5" c1 g4 f d e }
  
  \global
  
  \clef "bass"
   \relative c {
  c1 g'4 f d e f2. e8 d c1 r2 f2 e c1 
  c4 d e f g2 c,2 f1 g2 \[ a1 g \] g2 f4 e \[ d1 c \]
  b2 c d1 g2 a4 b2 a4 c2 \[ g1 a \] g\breve\fermata c,1
  g'2 f4 e d1 c\breve r1 c'2 g1 a2 e1 f2. d4 
  f g a b a g f e d\breve  a'1 d, r2 d 
  c d f g d1 e c2 e d g f1 f2 e4 d c2 r g'1 
  \[ a b \] c2 g a g d f g1
  f2 c2. d4 f2 c1 c'\breve f,1 c'4 a g2 f a g1 d2
  \[ c1. g'1 \] c,\longa
  }
  
  
  \globalEnd
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
  }
  \midi {
    \tempo 1=60
  }
}
