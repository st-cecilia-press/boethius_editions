%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 160 4)
scTitle = "A la bruma, al giatio e al vento"
scSubtitle = ""
scComposer = "Nicolò Pifaro"
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

\repeat volta 2 { 
e2 e d1 | g g2 g | f2. g4 a1 |
r2 a1 a2 | a1 d,1 | e2 e d bf'2~ | bf4 a g1 \ficta fs2 |
g\breve
}

f2 f f2. \ficta ef4 | d1 c2 c | b1 r

d2 d e g | f4 e d c d2 e2~ | e4 d c2. b8 a b2 | c1 d2. c4 |
d1 c1~| c c | r r2 g'2 a2. g4 e g g f g2. f4 e2 e f2. e4 e2 d | e2. d4 c \ficta bf a2 |
g4. a8[ b c] d4 e c2 b4 | c\breve

\bar "|."

}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
  \repeat volta 2 { 
g2 g g d'2~ | d4 c b2. a4 g2 | a f e e'2~ | 
e e f e | f d2. c4 a2 | a1 a2 g | d'2 \ficta ef d1 |
\ficta bf2. c4 d1
  }
  
  d2 d d2. c4 bf1 a2 a | d2. c4 b a g2
  
  g'1 g2 d2~ d4 c a2 | b2 c2~ | c4 b a2 g1 | e2. f4 g1 |
  g2. f4 e2 f2~| f e f1 | e2 d e g | c2. d4 e2 d | 
  \ficta bf1 c2 c | c1 c2 a | a g r d'~ | d d c4 a g2 | e\breve
  
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
  
  \repeat volta 2 {
    r2 c1 b4 a | b2 d1 cs2 | d4 a4 d1 \ficta cs4 b | 
    \ficta cs1 d2 cs | d2 f2. e4 d2~| d \ficta cs2 d1 | \ficta bf2 c a1 |
    g\breve
  }
  
  a2 a bf2. a8 g | f4 d g1 \ficta fs2 | g2 d'2. c4 b a
  
  b2 b c b | a4 g f e f2 g | e2 f d1 | c2 c'1 b4 a | 
  b1 c2 a | g1 a2. \ficta bf4 | c2 d c \ficta bf | a2. \ficta bf4 c4 c a a |
  g1 g2 g | a2 a g4 e f2 | e1 e2 f | g2. f4 e f d2 | c\breve
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c {  

\repeat volta 2 {
  c2 c g1 | g'2. f4 e2 e | d2. c4 a1 | 
  a2 a d2 a | d1 d2 d a1 d2 g,2~ g c d1 |
  g,\breve
}

d'1 bf1 | bf2 g a1 | g1 r2 g'2~ 

g4 f e d c2 g' | d1 d2 c2~ | c f, g1 | a g~ | 
g c2 f, | c'1 f,2. g4 a2 \ficta bf2 a e' | 
f2. e4 c2 d | e2. d4 c2 c | f,1 c'2 d | 
a2 c1 d2 | g,2. b4 c f, g2 | g'\breve

}




  
  
scWordsOneA = \lyricmode {

}
    
  

  
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
