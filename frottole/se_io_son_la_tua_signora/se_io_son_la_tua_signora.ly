%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 180 4)
scTitle = "Se io son la tua signora"
scSubtitle = ""
scComposer = "Adespoto"
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
a1 f2 g4. f8 e2 d c2 c 
g'2 f e4 a d,4. e8 | \ficta fs4 g2 fs4 g2 a |
g f e4 a d,4. e8 \ficta fs4 g2 fs4 g2 a |
g4. f8 e4 d c f e8 d c b | c2 r4 d2 \ficta cs8 b cs2 | d1\fermata
\bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
a1 a2 g4 e4~| e c d2 e e4. c8 c'4 g2 f4 g a g d' | 
d1 d4. e8 f4 f, | g g2 f4 g8 e4 f8 g4 d'4~ |
d c d4. c8 b8 c d e f2 | 
e4. d8 c4 b a4. b8 c4. d8 | e4 a,2 \ficta gs4 a2 a | f1\fermata
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
d1 d4. c8 b4 c | g4 a2 \ficta gs4 a2 a |
e'4 c2 b4 c2 b | a1 b2 a4 d4~ d c2 b4 c2 b |
a4 g a2 g d'4. c8 | b4 c g4. f8 e4 d c f e f d2 e1 | d\fermata
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c {  
d1 d2 e4 c4~ | c a b2 a a |
c d c4 f g2 | d1 g2 f | e d c4 a g2 |
d'4 e d2 e2 d | e4 c2 g4 | a2 a | a b a1 | a'\fermata
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
