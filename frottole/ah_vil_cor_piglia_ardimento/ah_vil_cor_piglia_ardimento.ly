%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Ah, vil cor, piglia ardimento"
scSubtitle = ""
scComposer = ""
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key d \dorian
  \time 2/2
}



scMinimumSystemSpacingTranspose = #8
scMinimumSystemSpacing = #8


scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"

scMusicOne =   \relative c' {
  \repeat volta 2 { f4 e d2 | r4 a'4 g8 f e d | \ficta cs1 }
  \repeat volta 2 {
    e4 g f8 e d c |
    b4 d c d | d1
  }
  \repeat volta 2 {
    f4 f e8 d c b c4 e2 d4 e1
  }
  c4 c b8 c d b |
  \ficta cs4 d2 cs4 |
  d4 e4. d8 c b

  \ficta cs4 d2 cs4 | d1 |
  f4 e d2 | r4 a'4 g8 f e d |
  \ficta cs1 | e4 g f8 e d c |
  b4 d c d | d4 g8 f e d c b |
  c4 e8 d c b a g |
  a4 b8 a b c d b |
  \ficta cs4 d2 cs4 |
  d1 \fermata \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {
  a4 d4. c8 b4 | a2 d, | e a4 e
  \repeat volta 2 {
    c'4 b r d~ | d c8 \ficta bf a2 |
    \ficta fs1
  }
  \repeat volta 2 {
    d'4. c8 b4 e |
    a, g a2 |
    r4 g4. f8 e d
  }
  e4. \ficta fs8 g4 d |
  a'1 |
  a4 b8 c g4. f8
  e4 e a2 | f2 f |
  a4 d4. c8 b4 | a2 d, |
  e2 a4 e c'4 b d4 d4~ |
  d c8 \ficta bf8 a2 |
  a4 b c g |
  a4 g8 f e2 |
  d2 g |
  a a |
  \ficta fs1
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {
  d4. c8 b2 | d4 a2 \ficta gs4 |
  a4 g8 f e4 a
  \repeat volta 2 {
    g4 g a2 g4. f8 e4 e | d1
  }
  \repeat volta 2 {
    a'4 a g a4~ |
    a b2 a4 |
    b4 c4. \ficta bf8 a g
  }
  a4 a d, g4~ |
  g8 f e d e2 |
  f4 g d2
  a'4 g8 f e2 |
  d1 |
  d'4. c8 b2 |
  d4 a2 \ficta gs4 |
  a4 g8 f e4 a |
  g4 g a2 |
  g4. f8 e4 e |
  f4 g2 d4 |
  e4 a4. g8 f e |
  f4 g4. f8 e d |
  e4 d e2 |
  d1
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c {
  d4 d g,2 | d'4. c8 b4 b | a1
  \repeat volta 2 {
    c4 e d2 |
    g,2 a4 a |
    a'1
  }
  \repeat volta 2 {
    d,4 d e a,4~ |
    a e' f2 |
    e4 c a2
  }
  a4 a g2 |
  a2 a4 a |
  d c b a
  
  a2 a a' a |
  d,4 d g,2 |
  d'4. c8 b4 b |
  a2 a |
  c4 e d2 |
  g,2 a4 a |
  d4 g, c b |
  a2 a |
  d4 g, b2 |
  a2 a |
  a'1
}






scWordsOneA = \lyricmode {
Ah, vil cor, pi -- glia_ar -- _ di -- _ mento.
sco -- pre_hor -- mai __ _ _ _ la __ _ fia -- ma_o -- ve_ardo.

ché soc -- cor -- _ _ _ so non fia tardo.

per ce -- lar __ _ _ _ trop -- po il la -- men -- _ _ _ _ _ _ to.

Ah, vil cor, pi -- glia_ar -- _ di -- _ mento
sco -- pre_hor -- mai __ _ _ _ la __ _ fia -- ma o -- ve_ar -- _ _ _ _ _ do, [o -- _ _ _ _ _ _ _ _ _ _ _ _ ve_ar -- _ _ do].
}




scWordsTwoA = \lyricmode {

}





scWordsThreeA = \lyricmode {

}





scWordsFourA = \lyricmode {

}




\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
