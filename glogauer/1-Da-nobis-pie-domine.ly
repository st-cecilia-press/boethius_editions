\version "2.18.2"
\include "english.ly"
\header {
  title = "1. Da nobis pie domine"
}

global = {
  \bar ".|"
  \key c \major
  \time 2/2
}

sopranoVoice = \relative c'' {
  \global

  c1 c2 b | c2. bf4 |  a2 g8 a bf4 | a4 g f2~ |  f4 e e d \break
  f1 | r2 f2 g2.   f4 e2 d c f e d2~d4 c4 c2~c b |  c2. c4 \break
  | c4 d e2 f2. f4 g2 bf2 |  a2. g8 f8 e2 c4 f4~f e4 d2~d cs2 |  d a' | bf2 a4 f | g2 f \break | 
  r c'2 | a a | c4 bf a g | f2 bf a2. g4 | f e f g | a2 a4 g4~ | g f4 f2~f4 d e2 |  f \longa \bar "|."
}


\score {
  \new Staff \with {
    midiInstrument = "electric piano 1"
    \consists "Ambitus_engraver"
  } { \sopranoVoice }
  \layout { }
  \midi {
    \tempo 2=100
  }
}
