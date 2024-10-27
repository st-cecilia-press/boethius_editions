%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 17 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Se, per colpa del vostra altiero sdegno"
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

scMusicOne =   \relative c' {  
\partial 2 r2 | r4 d d d | d d g2 | f4. e8 d c d4~ | d \ficta cs d d |
r d e f | e e e2 | c2 r4 c | c c d d | e2 f4 g~| 
g \ficta fs g g | r g e g f g a2 | a g4 g | f8 e f d e2~

e4 f e2 | r4 g f e | d c b2~ | b a | r4 a' a a 
a4 a a2 | e a4. g8 | f e d2 \ficta cs4 | d d r4 d | d d d d
a2 r4 e'4~ | e8 f g2 f8 e | d2 c | r4 f d g | f e d2~

d c | r4 g' g g | f8 e d c b d c b | a c b a b c d4~ | d \ficta cs d d
r4 c d e | f g a2 | r4 a4. g8 f4~ | f e8 d e f g4~ | g8 e f g \ficta fs4 g |
g g r g | f e d d | d2 d | \ficta cs4 d2 cs4 | d1\fermata \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
\partial 2  a4 d~ | d8 c b a g2 | b4. a8 g2 | a2 a | a a 
b c8 g d'4 | r8 c4 a8 g a b4 | a4 e2 e4~ | e \ficta fs g a | a2 r8 d4 \ficta cs8 |
d2 d4 d | d2 r4 c4 a c c2 | c c a2 a~

a4 a a2 | a4 e' c4 r8 g~| g g e2 e'4~ | e e c4. b8 | a8 g f e16 d e8 f e4 
f8 d d'4 c a | a2 a | a r4 a | a \ficta fs g b | r4 a b4. c8
d2 e4 c | g2 d' | d, e4 e | f2 g4 d'~ | d g,2 g4

g2 g | b4. a8 g4 g | a2 d | r4 d4. c8 b4 | a2 a4 d4~ |
d c8 b a b c4~ | c8 d e4. d8 c4 | c4 c c2 | c g | d' d |
b4 g d' d | d g,2 \ficta fs4 | g4. a8 b2 a1 | fs\fermata
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
\partial 2  d4. c8 | b a g2 b4~| b8 c d2 \ficta cs4 | d f4. e8 f d | e f e4 r d~ |
d8 c b a g c a b | c4 a8 c b a4 \ficta gs 8 | a e a4 g a4~ | a8 b c a b c d4~ | d \ficta cs d4 g,
a2 g4 b a b c e d e f8 c f4~| f e8 d e4 e | r4 d4. b8 c d

cs4 d cs2 | d4 b a c | b a2 \ficta gs8 \ficta fs | \ficta gs2 a4 e' | cs d2 cs4
d4 f e d~| d \ficta cs8 b cs2 | d8 \ficta cs d f e d e4 | d a b g | a f g8 d g4~|
g4 f g2 | c8 a b c b4 a~ | a \ficta gs a2 | a b4. g8 a8 b c2  b8 a

b2 c4 e | d8 a d2 \ficta cs4 | d2 r4 g,4 | g \ficta fs4 g4. \ficta f8 | e d e4 d a' |
g4 e f g | a b c2 | a4. g8 f2 | g2 c4. b8 a4. g8 a2 |
r4 b b b | a c b a | b8 c b4. a8 g f | e4 d8 f e d e4 | d1\fermata
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c {  
\partial 2 d2 | g, g | g'4. f8 e2 | d d | a d | 
g, c4 d | a a e'2 | a, c4 c | a2 g4 d' | a2 d4 e | 
d2 g,4 g' | d g c,2 | d4 c f2 | f c | d4 d a2~

a4 d a2 | d4 e f c | g a e'2~ | e a,~ | a4 d a2 |
d2 a | a a | d a' | d, g, | d' g, | 
d' c | c2 g4 d' | b2 a | d g, | d'4 c g2~ 

g2 c | g'4. f8 e2 | d g, | d' g, a d |
g,4 a d c | f e a,4. g8 | f2 f | c' c | d d 
g,2 g4 g | d'4 c g d' | g,1 | a2 a | a'1\fermata

}




  
  
scWordsOneA = \lyricmode {
Se, per col -- pa del vo -- stro __ _ al -- _ tie -- ro sde -- sgno,
il do -- lor che me_af -- fli -- ge,
ma -- do -- na, me con -- du -- ce_a -- l'au -- ra Sti -- ge,
non a -- vrò duol di mio sup -- pli -- cio in -- _ _ _ de -- _ gno,
né de l'e -- ter -- no fo -- co,
ma de voi, che ve -- re -- ti in __ _ _ _ si -- mil lo -- co.
Per -- ché, so -- ven -- te_in voi mi -- _ ran -- do __ _ fis -- so,
per vir -- tù del bel vi -- so,
pe -- na non fia __ _ _ _ là __ _ _ _ giù __ _ _ _ che 'l cor __ mi to -- chi.
Sol un tor -- men -- to_a -- rò: de __ _ chiu __ _ _ _ _ _ _ _ _ _ der gli_o -- chi,
sol un tor -- men -- to_a -- rò: de chiu -- der gli_o -- chi.
}
    
  

  
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
