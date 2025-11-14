\version "2.18.2"
\include "english.ly"
\header {
  title = "3. Aufer a nobis domine"
}

global = {
  \bar ".|"
  \key c \major
  \time 2/2
}

sopranoVoice = \relative c' {
  \global
 e1 ~ | e | d | g | a | c | c| c| \break
 c2. b4 | c2 d2~ d4 c4 c2~ | c b | c1 | r c c c b c d b | \break
  c b2 a2~ | a4 fs4 gs2 | a1~ | a | r | r | a g a b c a g e \break
  f | g2 a2~ | a4 g g2 ~ | g fs | g1~ | g | r g e f2 e2~ e4 d d2~ | d c | d1~d \break
   r r r | g g a b c a f g~ | g2 f2~ | f e2~ | e d2 | e\longa \bar "|."
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
