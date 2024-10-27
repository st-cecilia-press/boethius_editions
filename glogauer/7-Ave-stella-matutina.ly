
\version "2.24.1"
\include "english.ly"
\header {
  title = "Ave stella matutina"
  composer = "Anon"
  arranger = "Glogauer Liederbuch no.103"
}


#(set-global-staff-size 19)
#(set-default-paper-size "letter")

fourTwoCutTime = {
    \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
    \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
    \time 4/2
}

global = {
  \bar "."
  \key c \major
  \fourTwoCutTime
  \hide Staff.BarLine
  \override Staff.NoteHead.style = #'baroque

}

globalEnd = {
  \undo \hide Staff.BarLine
  \bar "|."
}

ficta = { \once \set suggestAccidentals = ##t }

sopranoVoice =  {
  \incipit { \clef "mensural-c1" \time 2/2 c''\breve. b'2 a' }

  \global
   \relative c'' {
  c1. b4 a4  \[ g2 a2 \]  \[ g2 c2. \] b8 a8 g1
  \ficta fs2  g1 e4 f4 g4 f8 g8  a2. g4  f4 g4 e2  \[ d1 c1 \]
  r1 e2 e2 f2 f2 g1 a1 g1 f1  \[ e2 c2 d1 \] 
  c1  r2 f2  \[ g2 e2  d1 \]  c2 c'2. b4 b4 a4  c1  \[ b2 g2  a1 \]
  \[ g2 a2 \]  \[ b2 c2  d2. \] c4  \[ b2 a2. \] g4 g1 \ficta fs2  g\breve 
  r1  d'2 d2 \[ c2 a2 \] b1  \[ a2 b2 c1 \]  d2. c8 b8  \[ a1   
  g1 \]   r1   c2 c2  b2 g2  a2 g4 f4  e1 d1  r1  
  g2 g2  c2 c2  d2 c2  b1  g1  d'1  b2 b2  c1  
  d1  r2 c2 \[ b2 g2  a1 \]  g1  r2 c2  b2 c2  a1  g2 a1
  \[ b2  c2 \] d2. c4 b4 a4  g2 a2  b2 c4 e2 d4 c2. b4 b4 a4    << 
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

altoVoice =  {
    \incipit { \clef "mensural-c3" \time 2/2 c'\longa }

  \global
  \clef "G_8"
  
   \relative c'  {
  c\breve  c1  c2. b8 a8 \[ g2 b2 
  a1 \]  g2 c2. d4 e2  f2. e4  d4 c4 c2. a4 b2 c\breve.
   r1 e2 e2  f2 f2  g1 a1  g1 f1 
  \[ e2 c2 d1 \]   c1  r2 \[ f2 g2 \] e2  d1 c1 r1 f1 
  \[ e2 c2 \] d2 e2 f2. e4 d2 c1 b2  \[ a1 g1 \] r1 
  g'2 g2 f2 d2 e2 f2  g2. f8 e8  \[ d1 c1 \] r1  f2 f2 
  e2 c2  d2 c4 b4  a1 g1 r1 c2 c2  f2 f2  g2 f2 
  e1 c1 r1 g'1 e2 e2 f1 g1  r2 c,2 
  \[ b2 g2 a1 \] g1  r2 c2 b2 c2  a1  g2 a1 c2 \[ b2 c2  
  d1 \] \[ e2 f2  d1 \]  \[ e2 f2 \] \[ g2 c,2 e1 d1 \]  c\longa
  }
  
  \globalEnd
}

tenorVoice = \relative c {
  
      \incipit { \clef "mensural-c5" \time 2/2 c1. c2 }

  \global
  \clef "F"
      \relative c {
  c1. c2  \[ e2 f2 \]  \[ e2 c2 \]  e4 g2 f4  
  \[ d1 e1 c1 \]  r4 f4 d4 e4  f4 e4 c2  g'1  \[ c,2 f2. \] 
  e4 f4 e4 \[ c2 e2 d1 \] c1  r1 e2 e2 f2 f2 c2 c'2. a4 b2  
  c1  r1 c,2 c2 \[ d2 f2 \] \[ e2 c2  g'1 \]  \[ a2 f2  g1 \]  \[ d2 f2 
  c1 \]  \[ g'2 e2 \] d2. e4  f4 g4 \[ a2  f2 \] g2  d1  r1  g1.
  e2 d2 d2  \[ a'1 g1 \]  \[ f2 g2  a1 g1 \]  f2. e8 d8   
  c2 e2 d2 g1 fs2 g2 r2 f2 g2  a1 d,2. f4  e2 d2  
  c1 r1 g'2 a2 g1 c1  d2 d2 g,2 b2  a1 
  g1 c1 d2 d2 c1  r1 c1  g2 f2 d2 r2  g2 f2 
  r2 g2  c,1  g'4. a8 b2  c2 a2  g2 r2  c4 b4 c2  g1  c,\longa
    }
  
  \globalEnd
}


\score {
  \new StaffGroup {
  <<
  \new Staff \with {
      instrumentName = "Discantus"

    midiInstrument = "english horn"
    \consists "Ambitus_engraver"
  } { \sopranoVoice }
    \new Staff \with {
        instrumentName = "Tenor"

    midiInstrument = "english horn"
    \consists "Ambitus_engraver"
  } { \altoVoice }
  \new Staff \with {
      instrumentName = "Contra"

    midiInstrument = "trombone"
    \consists "Ambitus_engraver"
  } { \tenorVoice}
  >>
  }
  \layout {
    indent = 4\cm
    incipit-width = 2\cm
  }
  \midi {
    \tempo 2=120
  }
}
