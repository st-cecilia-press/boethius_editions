%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Guarda donna el mio tormento"
scSubtitle = ""
scComposer = ""
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key f \major
  \time 2/2
  
}



scMinimumSystemSpacingTranspose = #8
scMinimumSystemSpacing = #8


scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"

scMusicOne =   \relative c'' {  
  a4 a a 2| a4 bf2 bf4 | a2 a | g2 g4 a4~ | 
  a8 g f e f4 d4~ | d8 e f2 e4 | f2 f |
  \bar "||" c'4^\segno c c4. bf8 
  a2 g4. f8 | e2 e | f4 f f2 | e4. d8[ c bf] c4~
  
  c e d c | c4. d8 e2 | f4^\markup{[coda]} f f2 | e4. d8[c bf] c4~|
  c4 e d c | c2 r4 f4~| f e8 d e4 f | f2 f^\markup{[Fine]} 
  
  \break
  \repeat volta 2 {
    e2 e4. f8 | g2 a | bf4. a8 bf4 g | a1\fermata
    c2 c | a2 a | bf4. a8 g4 f4 | e f2 e4 | f2 f 
  }
  
  a4 a a2 a4 bf2 bf4 | a2 a | 
  g2 g4 a4~ | a8 g f e f4 d4~ | d8 e f2 e4 | a1\fermata^\markup{D.S. al Fine} \bar "|."
  
  
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
  c4 c c2 | c4 bf2 bf4 | c2 c | c2 c4 c~|
  c c bf f | bf2 c | a a \bar "||" f'4 f f e8 d |
  c2 c4 bf8 a | g2 g | bf4 bf bf2 | g2 g4 f4~ |
  
  f4 g4 g2 | g g | bf4 bf bf2 | g g4 f4~ | 
  f g4 g2 | g4. a8 bf2 | c c | a a 
  
  \repeat volta 2 {
  g2 g c2 c bf2 bf c1\fermata
    g'2 g c,2 c f2 ef4 d | c bf c2 | 
  a2 a
  }
  
  c4 c c2 | c4 bf2 bf4 | c2 c | 
  c2 c4 c4~ | c c bf  f | bf2 c a1
  
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
  f4 f f2 | f4 d2 e4 | f2 f | e2 e4 f4~ |
  f8 e d c d4 bf4~ | bf8 a g f g2 | f2 f \bar "||" a'4 a a4. g8 |
  f2 e4. d8 c2 c | d4 d d2 | c4. bf8[ a g] a4~
  
  a8 bf c2 bf4 | c2 c | d4 d d2 | c4. bf8[a g] a4~|
  a8 bf c2 bf4 | c4 c f,2 | g2 g | f2 f 
  
  \repeat volta 2 {
    c'2 c4. d8 e2 f | d4. c8 d4 e | f1\fermata
    e2 e | f2 f | d4. c8 bf4 a | g4 f g2 |
    f2 f
  }
     
  f'4 f f2 | f4 d2 e4 | f2 f | 
  e2 e4 f4~ | f8 e d c d4 bf4 | bf8 a g f g2 | f1\fermata
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c {  
  f4 f f2 | f4 g2 g4 | f2 f | c2 c4 f4~ |
  f f bf,2 | bf4 d c2 | f, f \bar "||" f'4 f f2 |
  f2 c4 c | c2 c | bf4 bf bf2 | c2 c4 f,4~
  
  f4 c'4 g2 | c c | bf4 bf bf2 | c2 c4 f,4~ |
  f c'4 g2 | c d | c c | f, f 
  
  \repeat volta 2 {
    c' c c f g g f1\fermata  
    c2 c | f2 f | bf,2 ef4 f | c d c2 | f,2 f
  }
  
  f'4 f f2 | f4 g2 g4 | f2 f | 
  c2 c4 f~ | f f4 bf,2 | bf4 d c2 | f,1\fermata
  
}




  
  
scWordsOneA = \lyricmode {
Guar -- da, don -- na,_el mio tor -- men -- to, ch`e per ti __ _ _ _ son __ _ _ qua -- si mor -- to.
Non più guer -- _ ra, non più sten -- to ché s'io mo -- ro, __ _ _ _ _ mo -- ro a tor -- _ to,
ché s'io mo -- ro, __ _ _ _ _ mo -- _ _ ro a __ _ _ _ _ tor -- to.

 \set stanza = #"1. " Guar -- da __ _ don -- na,_el vol -- _ _ to mio
  co -- m'è for -- te_im -- pa -- _ _ _ _ _ li -- di -- to.

  \set stanza = #"1. " Las -- so me, che son fe -- ri -- to, né me pò __ _ _ _ _ sa -- _ nar on -- guento.
}
    
  
scWordsOneB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  El tor -- _ men -- to_ac -- er -- _ _ bo_e rio,
  fa chío son mo -- stra -- _ _ _ _ _ to_a di -- to

}

scWordsOneC = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
\set stanza = #"2. " Io me __ _ sen -- to_a po -- _ _ co_a poco
man -- car tut -- ti_i spir -- _ _ _ _ _ ti me -- i.

\set stanza = #"2. " Più non chie -- do_a -- dio -- to_a_i 
de -- i ché mei prie -- _ _ _ _ ghi__ _ spar -- go_al vento.

}

scWordsOneD = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
Ho nel __ _ pe -- cto_ac -- ce -- _ _ so_un foco
che má -- bru -- scia per __ _ _ _ _ _ co -- ste -- i!

}
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
