\version "2.18.2"
\include "english.ly"
\header {
  title = "5. Sancte Nicolae"
}

global = {
  \bar ".|"
  \key c \major
  \time 2/2
}

sopranoVoice = \relative c' {
  \global
c1 d f f f \break
 f e d f | e2 d2~ d4 c4 c2~ | c b | c1~ \break  | 
 c r c d f f f e \break
 d1 e f g f e d \break
 e1~e2 f2~ | f e2~ | e d | e1 r | e \break
 g g a a g a c a \break
 g f e | d2. e4 f2 g2~ | g4 f f2~ | f e | \break
 f1 r f e d c d f \break 
 f e | d2. e4 | f2 g2~ | g4 e e2 | e2 d | e1 f \break
 g d e | e2 f2~ | f4 e e2~ | e d | e\longa
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
