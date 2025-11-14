%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 17
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Non mi pento esser ligato"
scSubtitle = ""
scComposer = "Ioannnes Lulinus Venetus"
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
    g4 g g2 a2 g4 g | fs2 fs g4 g a4. g8 |
    f e d2 g \ficta fs4 g2 g
  }
  b4 b d4. c8 b2 | 
  b4 b a2 a b4 b c2 b a4 b4. a8 g4~ | g \ficta fs4 g2 g \bar "||" g4 g
  
  g2 a g4 g fs2 | \ficta fs g4 g a4. g8 \ficta f e d4~ 
  d4 g2 \ficta fs4 g1 | g d'2. c4 
  b2. a4 g2. f8 e | \ficta fs4 g2 fs4 g1 | g\breve \fermata 
  \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
  \repeat volta 2 {
    b4 b c2 a4 a2 g4 | a2 d e4 e f4. g8 
    a4 g2 c,4 d2 d d
  }
  d4 d d g2 f8 e | 
  d4 d d2 d d4 d | g2 g \ficta fs4 g2 d4 | d2 d d \bar "||" b4 b
  
  c2 a4 a2 g4 a2 | d2 e4 e f4. g8 a4 g4~ |
  g c, d2 d2. c4 | b2. a4 g1
  d'1 e | d2 d d1 | e d\fermata
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
  \repeat volta 2 {
    d4 d e2 c4 d2 \ficta cs4 | d2 a c4 c c d4~| 
    d8 c b a b4 g a2 g | g2
  }
  g'4 g g f8 e d4 g4~ | 
  g f8 e fs2 fs g4 g | 
  e2 d c4 d4. c8 b4 | a2 g g \bar "||" d'4 d

  e2 c4 d2 \ficta cs4 d2 | a c4 c c d4. c8 b a 
  b4 g a2 g1 | d'2. c4 b2. a4
  g2. a4 b2 c | a4 g a2 b1 | c b \fermata
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c' {  
  \repeat volta 2 {
    g4 g c,2 f4 d e2 | d2 d c4 c f d~ |
    d g2 f8 e d2 g, | g
  }
  g'4 g g2 g |
  g4 g d2 d g4 g | c,2 g' a4 g2 g,4 |
  d'2 g, g \bar "||" g'4 g |
 
  
  c,2 f4 d e2 d | d c4 c f d2 g4~ | 
  g f8 e d2 g,1 | g g 
   g'2. f4 e2 c | d2 d g,1 | c g\fermata
}




  
  
scWordsOneA = \lyricmode {
Non mi pen -- to_es -- ser li -- ga -- to da te, don -- _ _ _ na di va -- lo -- re,

ma ren -- gra -- _ tio sem -- pre_A -- mo -- re che per ser -- vo a te __ _ mi __ ha da -- to.

Non mi pen -- to_es -- ser li -- ga -- to da te, don -- _ _ _ na __ di va -- lo -- re,
da __ _ te __ _ don -- _ _ na di va -- lo -- re.
}
    
  

  
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
