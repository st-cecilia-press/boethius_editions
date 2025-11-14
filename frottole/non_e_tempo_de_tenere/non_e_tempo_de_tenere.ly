%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Non è tempo de tenere"
scSubtitle = ""
scComposer = "Nicolò Patavino"
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key g \dorian
  \time 4/4
}



scMinimumSystemSpacingTranspose = #8
scMinimumSystemSpacing = #8


scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"

scMusicOne =   \relative c'' {  
 d4. c8 bf a g f \time 3/2 g4 a c2 bf2 \time 5/4 a2 a |
 bf4 bf a4. g8 | f e d4 d g4 | f2 f |
 c'4. bf8 a4 bf4~ | bf8 a g f g2 | a2 a
 
 d,4 d e2 | d2 r4 g4~ \time 3/2 g4 f8 e f e d c bf2 
 \time 4/4 a2 a | bf4^\markup{[coda]} g8 a bf c d \ficta ef f4 g2 \ficta fs4 g1\fermata \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
 d4 d d2 \time 3/2 c8 bf a g f4 c'4 d2 | \time 4/4 d2 d |
 r4 bf c d a' g2 g,4 | a2 a'4. g8 | 
 f4 e8 d c4 g'4~g8 f e2 d4 | c4 d8 e f2
 
 r4 d g2 | g4. f8 e2 | \time 3/2 d d d 
 \time 2/2 d4 d d8 e f4 | g2 r4 g,4 a8 f bf c d2 | d1\fermata
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
 f4 f g8 f e d | e4 c4. d8 e f g2 | f2 f |
 d4 d f4. e8 | d8 c bf4 bf c | d2 d |
 a'4. g8 e d d4~ |d c d d | e4 f4. e8 d c 
 
 bf4 bf c2 | bf2 c4. bf8 | \time 3/2 a2 a g4 g'~
 \time 4/4 g4 f8 e f e d c | d4 bf4 g8 a bf c | d4 g, a2 | g1\fermata
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c' {  
  bf4. a8 g2 | \time 3/2 c,4 f a2 e \time 2/2 d2 d|
  g4 g f d4~ |d g4. f8 e4 | d2 d |
  f4 f f g4~ | g a bf2 | a4 d,4. e8 f4
  
  g4 g c,2 | g'2 c, \time 3/2 d d g, |
  \time 2/2 d'2 d g ef | d4 \ficta ef d2 | g,1\fermata
}




  
  
scWordsOneA = \lyricmode {
\set stanza = #"1. " Non __ _ è __ _ _ _ tem -- po de te -- ne -- re
più la fiam -- _ ma __ _ mi -- a rin -- chiu -- sa,
per -- chè den -- tro __ _ tan -- _ to_a -- bru -- scia
che co -- men -- za for __ _ _ _ _ _ _ pa -- re -- re, 
[pa -- _ _ _ _ _ _ _ re -- _ re.]
}
    
scWordsOneB = \lyricmode {
 \set stanza = #"2. "  Con __ _ il __ _ _ _ vol -- to ma -- ni -- fes -- to
 quan -- to i -- o pa -- _ ta_a -- man -- do_ac -- ce -- so;
 ch'e se_io fos -- se in ter -- _ ra ste -- so
 di -- rìa o -- gniun: «Ce -- _ _ ne -- _ _ _ re_è que -- sto, [è __ _ _ _ _ _ _ _ que -- _ sto.»]
 
 
}

scWordsOneC = \lyricmode {
  \set stanza = #"3. " Per -- _ ché __ _ _ _ gli_é la spo -- glia mi -- a 
  tut -- ta pal -- _ li -- _ da et e -- xan -gue,
  per man -- dar al __ _ cor __ _ el san -- gue
  che soc -- co -- rer lo __ _ _ _ _ _ _ vo -- rì -- a, [vo -- _ _ _ _ _ _ _ rì -- _ a.]
}

scWordsOneD = \lyricmode {
  \set stanza = #"4. " Ma __ _ non __ _ _ _ pò che_o -- gnu suo aì -- ta 
  sta in lán -- _ ge -- _ li -- co tuo vi -- so,
  o -- ve_al -- ber -- ga el pa -- _ ra -- di -- so 
  e_il ri -- po -- so de __ _ _ mi -- _ _ _ a
  vi -- ta, [mi -- _ _ _ _ _ _ a vi -- _ ta.]
}
  

  
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
