%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 160 4)
scTitle = "De speranza hormai son fora"
scSubtitle = ""
scComposer = ""
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key d \dorian
  \time 4/2
}



scMinimumSystemSpacingTranspose = #8
scMinimumSystemSpacing = #8


scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"

scMusicOne =   \relative c'' {
  \repeat volta 2 {
    \partial 1

    d2 d c b a a
    g g a a b c8 b a g \ficta fs4 g2 fs4 g2 g
  }
  
  a2 a | b2 c8 b a g \ficta fs4 g2 fs4 | g2 g g8 a b c d2 |
  
  b4. c8 d2. bf2 a4 | g2 fs \fermata d'2 d | c b a a |
  g g a a | b c8 b a g \ficta fs4 g2 fs4 | g2 g d'4 \ficta ef2 d4 |
  c8 b c2 b8 a g1~ | g2 e f4 g2 \ficta fs4 | g\breve \bar "|."

}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G"

scMusicTwo =   \relative c' {
  \repeat volta 2 {
    \partial 1

    f4. e8 d4 a'4~a f4 g d d2 d
    d d d d d g4 f8 e d2 d4. c8 c8 a g4. a8 b g
  }
  
  d'2 d | d g4 f8 e d2 d | d b4 g8[ a b c] d4 b4. a8
  
  g2 r4 g'4. a8[ \ficta bf c] d2 | bf2 a \fermata f4. e8 d4 a'4~ | a f g d d2 d |
  d2 d d d | d2 g4 f8 e d2 d | b4 c2 b8 a g2 g' |
  g2 g4 f8 e d4 c d2 | d r4 g4 f8 e d c d2 | b\breve
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G"

scMusicThree =   \relative c' {
  \repeat volta 2 {
    \partial 1

    d4 a'4. g8 f4 e a d, g2 fs8 e fs4 g8 a
    bf4. a8 bf4 a8 g \ficta fs4 g2 fs4
    g8 f e d e d c b a4 g a2  g4. a8 b c d e
  }
  
  \ficta fs4 g2 fs4 | g8 f e d e d c b a4 g a2 | r4 g4. a8[ b c] d4 g, g'8 a b c
  
  d2 d,1.~ | d1\fermata d4 a'4. g8 f4 | e a d, g2 fs8 e fs4 g8 a | 
  \ficta bf4. a8 bf4 a8 g \ficta fs4 g2 fs4 | g8 f e d e d c b a4 g a2 | g\breve
  d'4 \ficta ef2 d8 c b4 c2 b8 a | b2 c4. b8 a b a g a2 | g\breve
  
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "G_8"

scMusicFour =   \relative c {
  \repeat volta 2 {
    \partial 1

    d2 d a' g d d g g d d g c, d1 d'8 c b a g4 f8 e
  }
  
  d2 d g c, d1 | g8 a b c d2 g, g
  
  g2 bf2. g2 \ficta fs4 | g2 d2 \fermata d d | a' g d d | 
  g g d d | g c, d1 | d'4 \ficta ef2 d8 c b4 c2 b8 a g4 c,4. d8 e f g4 c, g'2 | g c, d1 | d'\breve
}






scWordsOneA = \lyricmode {
De spe -- ran -- za_hor -- mai son fo -- ra, né più spe -- ro __ _ _ _ es -- ser con -- ten -- to,

ma_el mio vi -- ver __ _ _ _ in __ _ tor -- men -- to se -- _ _ _ rà

sem -- _ pre fin ch'io mo -- ra.

De spe -- ran -- za_or -- mai son fo -- ra, né più spe -- ro __ _ _ _ es -- ser con -- ten -- to, 
né più spe -- _ _ ro es -- _ ser con -- ten -- _ _ to.
}





scWordsTwoA = \lyricmode {

}





scWordsThreeA = \lyricmode {

}





scWordsFourA = \lyricmode {

}




\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
