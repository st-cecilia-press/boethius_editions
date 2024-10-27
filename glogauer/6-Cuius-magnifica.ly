\version "2.18.2"
\include "english.ly"
\header {
  title = "6. Cuius magnifica"
}

global = {
  \bar ".|"
  \key c \major
  \time 2/2
}

sopranoVoice = \relative c' {
  \global
d1 f1 ~ f f g \break
a g2 c | b2 a~ a4 gs gs fs | a1~ a | r1 \break
g~ g | c c~ c d c2 b~ | b4 a a2~ | \break
a gs | a1 | r | c c g a | \break
g2 f~ | f4 d e2~ | e d | e1~ | e~ | e | g~ | g2 a~ | \break
a b c1 b a g2. b4~ | b c a2~ | a4 fs gs2 | \break
a1~ a~ a r r d, f g d \break
f1~ f2 e d1 c1~ c | r d1~ | d2 e \break
f1 | g2.  f4 | e d d2~ | d cs2 | d1~ d | c \break
f1~ f | e1 | d2 g | f4. e8 e2~ e d e\longa
}


\score {
  \new Staff \with {
    midiInstrument = "electric piano 1"
    \consists "Ambitus_engraver"
  } { \sopranoVoice }
  \layout { }
  \midi {
    \tempo 2=120
  }
}
