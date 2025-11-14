\version "2.24"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")

\header {
  title = "Come, love we God!"
  composer = "Shanne MS, 16th C"
  arranger = "arr. Hugh Keyte and Andrew Parrott"
  poet = "(Epiphany; Christmas)"
}

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key f \major

  \once \omit Staff.TimeSignature
  \time 4/4
  \override Staff.NoteHead.style = #'baroque


}

globalEnd = {
  \bar "|."
}

discantusVoice = \relative c' {
  \global
\clef G

c2 f g4 a2 f4 bf bf a2 \bar "|"
f4 g g fs g2 a4 f2 e4 f2 \bar "|"
c2 f4 f e2 c4 d e f2 \bar "|" \break
c4 e4. f8 g4 a2 f4 bf g g2 \bar "|"
a4 g4 g fs g2 a4 f e f2 \bar "|"
g4 bf4. a8 g4 fs2 \bar "|"
a4 a c2 f,4. g8 a4 f2 e4 f1


\globalEnd
}



tenorVoice =  \relative c {
    \global

  \clef "G_8"
  f2 c' c4 c2 c4 d bf c2 
  c4 ef ef d bf2 c4 d c2 a2 
  f a4 a a2 a4 bf bf a2 
  a4 c2 c4 c2 c4 d b c2 
  c4 ef ef d bf2 c4 d c a2 
  c4 d4. c8 d4 a2
  c4 f2 e4 d2 c4 bf g2 a1

}




contraVoice =  \relative c {
  \global
  \clef "F"
  
  f2 f c4 f2 a4 g g f2 
  f4 c c d g2 f4 bf, c2 f2
  f4. e8 d4 d c4. bf8 a4 g g f2
  f'4 c4. d8 e4 f2 a4 g g c,2
  f4 c c d g2 f4 bf, c f2
  c4 g4. a8 bf c d2 
  a'4 f4. g8 a4 bf2 f4 bf, c2 f1
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
      measureBarType = ""
    }
  }
  \midi {
    \tempo 1=35
  }
}
