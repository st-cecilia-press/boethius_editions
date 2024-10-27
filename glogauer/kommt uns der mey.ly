\version "2.22"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")

\header {
  title = "Kommt uns der mey mit seyner lust"
  composer = "Anon"
  arranger = "Glogauer Liederbuch no. 216"
}

ficta = { \once \set suggestAccidentals = ##t }
hidebarline = {
  \hide StaffGroup.SpanBar
  s\longa
  \undo \hide StaffGroup.SpanBar
}

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

  \incipit { \clef "mensural-c1" d'1 f'2 g' }

  \global

  \clef G

 \relative c' {
  \repeat volta 2 {
    d1 f2 g a4 b c2 b \[ a1 g \] \ficta fs2 g b a2. g4 f2
    d e \[ a1 g \] \ficta fs2
    \alternative {
      \volta 1 { g\breve \undo \hide Staff.BarLine }
      \volta 2 {  g\breve \hide Staff.BarLine }
    }
  } r2 c2 b \[ a1 d \]
  \ficta cs2 d d c c a b a d2. c8 b c1 b2
  c2. b8 a g1 r2 c2 b2. a4 g2 a f e d1 r2
  d'2 c b a c2. b4 a2. g4 f e d2 a'2. g4 g2. \ficta fs8[ g ] \ficta fs! g e \ficta fs!

  <<
    \hidebarline
    { g\longa }
  >>
}


  \globalEnd


}

tenorVoice =  {
  \incipit {  \clef "mensural-c4" d'1. b2 }

  \global

  \clef "G_8"

 \relative c' {
  \repeat volta 2 {
    d1. b2 c2. b8 a g2 f g b a1 g f a2 b c1 b2 g a1
    \alternative {
      \volta 1 { g\breve  \undo \hide Staff.BarLine }
      \volta 2 { g1 r2 \hide Staff.BarLine }
    }
  }
  c2 b a \[ d1 f \] e2 e d2. c8 b a2 a c d f1 e2 c d1 c r2
  c2 b a g1 r2 d'2 d c d1 f e2 d \[ c1 a \] d2. c4 b2 c b2 g a1
  g\longa
}


  \globalEnd
  % Music follows here.

}

contraVoice =  {
  % Music follows here.
  \incipit { \clef "mensural-c4" d1. g2 }

  \global


  \clef "F"
   \relative c {
  \repeat volta 2{
    d1. g2 f c g' d e g d1 r2 g2 d2. e4 f2 g c, f g e d1
    \alternative {
      \volta 1 { r\breve \undo \hide Staff.BarLine }
      \volta 2 { r2 g e c \hide Staff.BarLine }
    }
  }
  e f g f \[ d1 a' \] \[ d,1 f \] r2 g d f \[ c1 g' \]
  a2. g8 f e2 c g' f2 g2.  f4 e2 d4 e f g a2 b2. a8 g
  f2 d4 f c2 g'2 a2. g4 f2. e4 d e f c g'2 f g e d1 d'\longa
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
    \tempo 1=70
  }
}
