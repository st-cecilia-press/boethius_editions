\version "2.24.1"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")

\header {
  title = "Crist der ist erstanden"
  composer = "Anon"
  arranger = "Glogauer Liederbuch no. 127"
}

ficta = { \once \set suggestAccidentals = ##t }

fourTwoCutTime = {
    \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
    \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
    \time 4/2
}


global = {
  \key c \major

  \fourTwoCutTime
  \hide Staff.BarLine
  \override Staff.NoteHead.style = #'baroque

}

cTwoTime = {
    \time 4/4 s4 \once \override Staff.TimeSignature.style = #'single-digit \time 2/1 
}

globalEnd = {
  \undo \hide Staff.BarLine
  \bar "|."
}

discantusVoice =  {


  \incipit  \relative c' {
    \clef "mensural-c1" 
    \cTwoTime
    \[ d\breve a'\breve \] } 

\global

 \relative c' {
d1 a' e g \[ f2 d2. \] b4 \ficta cs2 d1 r
a' b c b a2 a1 \ficta gs2 a1 r
d b c a \[ g f \] e r1
d a' e g \[ f e \] d r
c\breve d \[ e d \] \[ g1 e f a g d f1. e1 d \] \ficta cs2

  << 
     { d\longa }
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
  \incipit  \relative c' {
    \clef "mensural-c4" 
    \cTwoTime
     d\breve c1 a\breve  } 
  \global

  \clef "G_8"
   \relative c' {
  d1 c2 a1 g2. f4 e2 \[ d f e1 d\breve \]
  r2 d'1 e c2 \[ d e \] \[c a b1 \]
  a2 d1 \[ e2 f d1 e \] c a2 \[ b c \] d4 a b2 c2. b4
  \[ g2 a \] \[ f d \] r2 a'2. b4 c2 \[ b g \] \[ a d2. \] 
  \ficta cs4 \ficta cs!4 b \[ d2 g,2. \]
    f4 g2 a e4 a2 g4 e2 \[ d2 g2. \] f4 d2 \[ c2 c'2. \] b4 g2. d4 
  g1 \[ f2 e c1 \]
  c'2 \[ a d2. \] a4 \[ d2 b g1 \] d'2. c8 b a2. f4 \[ g2 a \] f \[ e1 d\longa \]
  }

  \globalEnd
  % Music follows here.

}

contraVoice =  {
  % Music follows here.
  \incipit \relative c { \clef "petrucci-f" \cTwoTime  d\breve a1. b2}
  
  \global
  
  \clef "bass"

 \relative c { 
  d1 a2. b4 c d e2. d4 c2 \[ d1 a \] r2 a'1. \[ d,1 g c, \]
  \[  g'2 e f1 e \]
  f2 d4 f2 g4 e2 \[ d1 g c, \] \[ f e d \] 
  c2. d4 \[ e2 a, \] \[ a' f \] \[ d1 a' \] 
  \[ g2 e d1 a \] \[ bf\breve a \] 
  \[ a'2 \ficta bf2. \] a4 f2 \[ g c, \] \[ c1 g \] 
  r2 \[ d'2 c g'1 \] c,2 
  \[ d\breve g,1 d'\breve \]
  \[ d2 e \] \[ c d a1 \] a'\longa
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
    \tempo 1=90
  }
}
