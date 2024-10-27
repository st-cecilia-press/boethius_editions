%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Son disposto de seguire"
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

scMusicOne =   \relative c' {  
d4 d a' g8 f e f g2 \ficta fs4 | 
g2 g e4 e e2 |
d8 c d2 d4 c2 c | 
a'4 a a g8 f g4 a2 \ficta gs4 |
a4 g8 f e d c b c2 d4 d

\time 5/2 e4. d8 c2 d4 c8 b c4 d2 \ficta cs4 \time 2/2 d1 \bar "||"

\time 4/2 d4 \segno d a'4 g8 f8 e f g2 \ficta fs4 | 
g2 g e4 e e2 | d8 c d2 d4 c f4. e8 d4~
d c8 b \ficta cs2 d1^\markup{[Fine]} 
\repeat volta 3 {
  f4 f f2 f4 g4. f8 g4 |
  a2 a r4 a8 b c2~ |
  c4 b a g8 f e2 f |
  d4. e8 f4 e8 d e4 f2 e4 |
  \time 3/2 f4. e8 d4 c d2 \ficta cs1
}

}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
a4 a4. b8 c4 g4 d'4 d2 |
b4. c8 d2 c4 c c2 |
g8 a \ficta bf4. a8 g f e1 |
a4 a a e'2 d4 e2 |
c2 c4 e2 e4 a,4. b8

c4. d8 e4 a,2 g4 a \ficta bf4 a2 fs1
a4 a4. b8 c4 g4 d'4 d2 | 
b4. c8 d2 c4 c c2 |
g8 a \ficta bf4. a8 g f e4 a2 g4

a4 \ficta bf4 a2 fs1

\repeat volta 3 {
  a4 a a2 a8 b c2 c4 |
  c2 c c8 d e f g2 |
  g f g d4. e8 |
  f4. e8 d4 \ficta bf c d c2 |
  a2 d,4 e2 d4  | e1
}

}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
d4 d c2. b4 a2 | g2 g g4 g g2 |
e4 f2 g4 a2 a | c4 c c b8 a b4 a b2 |
a2 a a f4 f

g2 a d, e e d1
d'4 d c2. \ficta bf4 a2 | 
g2 g g4 g g2 | 
e4 f2 g4 a2 d,
e2 e d1

\repeat volta 3 {
  d'4 d d2. e4. d8 e4 |
  f2 f f e~ |
  e4 d c2 c a |
  bf f g g f g4 a2 g4 a1
}
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c {  
d4 d f e8 d c4 g d'2 | g,1 c4 c c2 |
bf4 bf2. a1 | a4 a a2 e'4 f e2 |
f4 e8 d c b a g a2 d4 d

c4. b8 a2 \ficta bf a4 g a2 a'1
d,4 d f e8 d c4 g d'2 | 
g,1 c4 c c2 bf4 bf2. a2 \ficta bf2

a4 g a2 a'1 

\repeat volta 3 {
  d,4 d d2 d4 c2 c4 | 
  f2 f f c2~ |
  c4 d8 e f4 e8 d c2 d |
  bf4. c8 d2 c4 \ficta bf c2 |
  d4. c8 \ficta bf4 a bf2 a1
}

}




  
  
scWordsOneA = \lyricmode {
Son di -- spo -- _ _ sto __ _ de se -- gui -- re
que -- sta_im -- pre -- sa a -- cer -- ba_e for -- te 
Se pa -- tir do -- _ ves -- _ se
mor -- _ _ _ _ _ _ te e, mo -- ren -- _ do_o -- gnhor __ _ _ lan -- gui -- _ re.

Son di -- spo -- _ _ sto __ _ de se -- gui -- re
que -- sta_im -- pre -- sa a -- cer -- ba_e for -- _ _ _ _ _ _ te

To -- le -- rar con pa -- _ _ tien -- tia
vo -- _ glio_o -- gni_a spro et __ _ rio tor -- men -- _ _ _ _ _ _ _ _ _ _ _ _ to.
}
    
  

  
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
