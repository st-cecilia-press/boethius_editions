\version "2.18.2"
\include "english.ly"
\header {
  title = "2. Ave rosa rubicunda"
}

global = {
  \bar ".|"
  \key c \major
  \time 2/2
}

sopranoVoice = \relative c'' {
  \global

r1 | r | g1 | f2 f | bf1 | \break
a1 | r2 g | f f | g bf | a c | bf2. a8 g | f2 e \break |
d2 g2~ | g4 fs4 fs e | g1 | r2 g | f g | a bf8 a g4 | f2 g | \break
a2 d, | c f | e4 g f d~ | d c d bf | a2 g4 bf~ | \break 
bf a g d'~ | d g f e~ | e d2 cs4 | d1 | r2 f | g2 a2~ \break
a4 bf4 c2 | bf4 bf2 a4 | bf2 a4 g | f2 bf2~ | bf a | g2. f8 e | f1~ | f\breve | \break
f1 g | f2 bf2~ | bf4 a a g | bf2 c4. bf8 | a2 g2 \break
r4 bf2 a4 | g2 f | e d4 d~ | d cs2 b4 | d1 r4 d g2 \break |
f bf2 | a r4 d | c4. bf16 a g2 | f2 f4 bf4~ | bf a2 g4 | \break
a4 c2 bf4~ | bf a f bf4 ~ | bf8 a8 a4. g8 f4 | e8 d g2 fs4 | g\longa
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
