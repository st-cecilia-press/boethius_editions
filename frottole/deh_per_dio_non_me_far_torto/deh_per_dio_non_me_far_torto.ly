%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 180 4)
scTitle = "Deh per Dio non me far torto"
scSubtitle = ""
scComposer = "Bartolomeo Tromboncino"
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

scMusicOne =   \relative c'' {   
 \repeat volta 2 { g2 a b d | c d | b b | e, f | d g2~ | 
                   g4 \ficta fs8 e fs4 g | g2 g }
 
 b2 c a2. g4 | f2 e | d d | d'2. c4
 
 b2 c b4 a g2~|  g4 \ficta fs8 e fs2 | g g \bar "||" g a 
 b d c d | b b | e, f d g2~ | g4 \ficta fs8 e fs4 g |
 g2 a | b4 c d2 | r4 b4.^\markup{[coda]} a8 g4~ | g \ficta fs8 e fs4 g g1\fermata \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
  \repeat volta 2 {
    d2 d d a'2 | a a | d, d | 
    c r4 d4~ | d c8 b c2 | d2 d | b b
  }

g'2 g c, c | a4 bf4 g2 | g g' | d4 g2 f8 e


d2 g2~ | g4 d2 e4 | d2 d | b b \bar "||" d d | 
d a' | a a | d, d | c r4 d4~| d c8 b c2 | d2 d |
d d | r4 a'2 d,4~| d c8 b c2 | d2 d | b1 \fermata

}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c'' {  

\repeat volta 2 {
  r4 g2 \ficta fs4 | g2 f | e fs | g g |
  g, a | b g | a4. g8 a2 | g g
}

d' e f2. e4 | d2 c | b b | r2 g'2~

g4 f e2 | d4. c8 b4 c | a4 g a2 | g2 g | r4 g'2 \ficta fs4 | 
g2 f e fs | g g g, a | b g | a4. g8 a2 | 
g4 g'2 \ficta fs4 g e \ficta fs2 | g g, | a4. g8 a2 | g1\ficta

}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c' {  

\repeat volta 2 {
  g2 d g d | a' d, | g g |
  c,4 e d2 | g e | d d | d' d
}

g, c, | f2. c4 d bf c2 | g'2 g | g g

g2 c, | g'4 f g c, | d2 d | d'2 d \bar "||" g,  d |
g d | a' d, | g g | c,4 e d2 | g e d d |
g d g4 a d,2 | e e | d d | d'1\fermata

}




  
  
scWordsOneA = \lyricmode {
Deh, per Dio, non me far tor -- to, 

tram -- mi_hor -- mai del __ fo -- _ _ co_e -- ter -- no,

poi che sol per te son mor -- to e dan --

na -- to 

nel' __ _ _ _ _ in -- fer -- no!

Deh, per -- Dio, non me far tor -- to, tram -- mi_hor -- mai -- del __ _ _ fo -- _ 
co e ter -- _ no del __ _ fo -- _ _ co_e -- ter -- no!
}
    
scWordsOneB = \lyricmode {
  Io son l'om -- bra po -- ve -- rel -- la d'un ch'è mor -- to  __
  sol __ _ _ per fe -- de,
}

scWordsOneC = \lyricmode {
  ch'al suo Dio va ta -- pi -- nel -- la per ha -- ver qual -- che __ _ _ mer -- ce -- de;
  
  poi che_a Mor -- te se con -- ce -- de que -- sto dì pa __ ce_e __ _ _ _ _ con -- for -- to.
}
  
scWordsOneD = \lyricmode {
}

  
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
