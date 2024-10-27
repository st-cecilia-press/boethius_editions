%score_options {"parts": 5, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Fugga pur, chi vol, Amore"
scSubtitle = ""
scComposer = "Marchetto Cara"
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
 g4 g b2 | g4 b2 a8 g | d'2 d | g,4 g g2 | d'4 d a a |
 f4. e8 d e f g | a4 g2 \ficta fs4 | g2 g | g4 g g g4~ | g c2 b4
 c2 c | b4 b c4. b8 | a g a2 \ficta gs4 | a a r g~ | g \ficta fs8 e fs2
 g2 g | g4 g b2 | g4 b2 a8 g | d'2 d | g,4 g g2
 d'4 d a a | f4.e8 d e f g | a4 d, r g~ | g \ficta fs8 e fs2 | g1~ | g~ | g\fermata
 
 
\repeat volta 2 { g4^\markup{Secunda pars} g g 2 | a4 g f2 | e2 e2 
b'4 b c4. b8 a4 g2 g4 fs2 fs
}
g4 g g g~ | g c2 b4 | c2 c | b4 b c4. b8 a g a2 \ficta gs4 | a a r4 g4~ | g \ficta fs8 e fs2 
g2 g | g4 g b2 | g4 b2 a8 g | d'2 d | g,4 g g2 | d'4 d a a | 
f4. e8 d e f g a4 d, r4 g4~ | g \ficta fs8 e fs2 | g1~ | g | g\fermata \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
r1 | g4 g b2 | g4 b2 a8 g | d'2 g, | a4 d4. e8 f4~ | 
f8 g a4. g8 f e | f4. e8 d2 | b4. a8 g4 f8 e | d4 d' e d | e f g2
e2 e | g4 g e a~ | a8 g f4 e2 | c4 c d b8 c | d2 r4 d,
d2 d | r1 g4 g b2 | g4 b2 a8 g | d'2 g,
a4 d4. e8 f4~ | f8 g a4. g8 f e | f4 a4. g8 f e | d4 a d4. c8 | b4 c2 b4|
c2 c | b1\fermata

\repeat volta 2 { r1 r r r r r  } 

d4 d e d e f g2 |
e e | g4 g e2 | a4. g8 f4 e4~ | e c c d | b b d2
r4 d,4 d2 r1 g4 g b2 g4 b2 a8 g | d'2 g, | a4 d4. e8 f4~ | f8 g a4. g8 f e | f4 a4. g8 f e |
d4 a d4. c8 | b4 c2 b4 | c1 | b1\fermata
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
r1 | r2 g4 g | b2 g4 b4~ | b a8 g d'4. e8 | f2 d |
d4. e8 f4 d4~ | d c8 b a4 a | g2 b | b4 b c b | c2 d
c2 c | d4 d c e | d4. c8 b2 | a4 a a b a g a2
g2 g | r1 r2 g4 g b2 g4 b4~ | b a8 g d'4. e8
f2 d | d4. e8 f4 d4~ | d8 e f4 d c8 b | a4 g a2 | g1~ | g1~ | g1\fermata

\repeat volta 2 { d'4 g8 f e d c b | a8 b c2 b4 | c2 c 
d4 d c8 b a4~ | a8 b c4 b a8 g a2 d
}

b4 b c b c2 d |
c c d4 d c e |
d4. c8 b2 |
a4 a a b a g a2

g2 g | r1 r2 g4 g | b2 g4 b4~ | b a8 g d'4. e8 f2 d | 
d4. e8 f4 d4~| d8 e f4 d c8 b a4 g a2 | g1~ g~ | g\fermata


}

scMusicFourName = "concordans"
scMusicFourClef = \clef "G_8"

scMusicFour =   \relative c' {  
r2 g4 g | b2 g4 b4~ | b a8 g d'2 | r4 g,4. a8 b c | d4. e8 f4. f8 |
a4 d, d c8 b | a4 a d,2 | d d | g4 g g g | g a d, g
g2 g g4 g g c8 b | a4 d, e2 | e4 e f d~ | d d' d2
b2 b | r g4 g | b2 g4 b~ | b a8 g d'2 | r4 g,4. a8 b c
d4. e8 f4. g8 a4 d,2 c8 b | a4. g8 f e d4 | a'4 d r d, | d e d2 |
e2 e | d1\fermata

\repeat volta 2 { b'4 d c2 | r4 g4. e8 f4 | g4 g'2 g4 
g4. f8 e4. f8 c4 e d2~d4 c8 b a2
} 
g4 g g g g a d, g g2 g g4 g g c8 b | a4 d, e2 | e4 e f d~ | d d' d2
b2 b | r2 g4 g | b2 g4 b4~ | b a8 g d'2 | r4 g,4. a8 b c | d4. e8 f4. g8 |
a4 d,4 d c8 b | a4. g8 f e d4 | a'4 d r4 d, | d e d2 | e e | d1\fermata
}

scMusicFiveName = "bassus"
scMusicFiveClef = \clef "bass"

scMusicFive =   \relative c' {  
r1 r g4 g b2 | g4 b4. c8 d4 | d,4 d d d |
d2 d4 d4~ | d d d2 | g, g | g4 g c g | c a g2
c2 c g4 g c a | d2 r | a4 a d g, | d'2 d
g,2 g | r1 r | g'4 g b2 | g4 b4. c8 d4
d,4 d d d d2 d4 d4~ | d d4 d2 | d d | g,4 c g2 | c1 | g\fermata

\repeat volta 2 { g'4 g c,2 | f4 e d2 | c2 c 
g'4 g a f~ | f c g'2 | d2 d
} 
g,4 g c g c a g2 | 
c2 c | g4 g c a | d2 r |
a4 a d g, d'2 d

g,2 g | r1 r | g'4 g b2 | g4 b4. c8 d4 | d,4 d d d |
d2 d4 d4~ |d d4 d2 | d2 d2 | g,4 c g2 | c1 | g\fermata
}

 
  
scWordsOneA = \lyricmode {

}
    
  

  
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  

  
  
scWordsFiveA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
