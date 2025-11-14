\version "2.18.2"
\include "english.ly"
\header {
  title = "4. Ecce tu pulchra es"
}

global = {
  \bar ".|"
  \key c \major
  \time 2/2
}

sopranoVoice = \relative c' {
  \global
r1 d f d f d c \break
f | g2. a4 | bf2 a2~ | a2 g2 | a1 | r f g a g f \break
g | a2 g2~ | g4 e fs2 | g1 g a f e d f \break
e4 d8 c c2~ | c b | c1 r d a c d~ | d c \break
f g a f e d | c2 f | e4 d d2~ | d cs2 | d\longa
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
