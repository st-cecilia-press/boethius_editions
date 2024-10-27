\version "2.24"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")

\header {
  title = "Vos virgen soys nuestra madre"
  composer = "Anon"
  arranger = "Cancioneiro de Uppsala, nº XLVIII"
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
  \key f \major

  \time 3/4
  \override Staff.NoteHead.style = #'baroque


}

globalEnd = {
  \bar "|."
}

discantusVoice = \relative c' {
  \global
\clef G
f2 g4 a2 bf4 c2 a4 bf4 c f, a4 g2 f2. r r r r r |
a4. f8 g4 f2 bf4 a f g bf4. a8 g4 f g2 a2. |
 \repeat volta 2 { c2 c4 a bf g f g2 f2.^\markup{\fermata Fine} }
\time 2/2 

a2 a4 a g2 f2. g8 a bf2 |
a4. bf8 c4 bf a4 f g2 f1 |
f2. f4 f f f f | g2 a2. a4 g2 |
a1 | bf2 c2. c4 bf2 c2. bf4 |
a2. g4 a1 g1 f\longa

\globalEnd
}



tenorVoice =  \relative c' {
  
  \global
  \clef G
  
  r2. f2 g4 a2 f4 g a4. g8 f4. f8 e4 f2. 
  a2 g4 e2 f4 a4 g4. f8 d4 e2 d2. |
  r a'4. f8 g4 f d e f g4. f8 f2 e4 f2. |
  \repeat volta 2 { a2 g4 f4 g e f4. f8 e4 f2.^\fermata }
  \time 2/2 r1 r2 a2 a4 a g2 f4. g8 a4 g4. f8 f2 e4 f1 
  d2. d4 d d d d e2 c d1
  e2 f4. e8 d2 c d1 c2 c'2. bf4 a2. g4 f1 e2 f\longa

}




contraVoice =  \relative c' {
  \global
  \clef "G_8"
  r2. r r r r r f2 e4 c2 d4 f4 e4. d8 d2 \ficta cs4 d2. 
  r2. r d2 c4 bf2 c4 d c2 f,2.
  \repeat volta 2 { f'2 c4 d bf c d c2 f,2.^\fermata }
  \time 2/2
  r1 r r r r r bf2. bf4 bf bf bf bf d4 c a2 bf1
  a2 f g a g g a f f'2. e4 d4. e8 d2 c1 f,\longa
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
    \context {
      \Staff
      measureBarType = "-span|"
    }
  }
  \midi {
    \tempo 1=70
  }
}
