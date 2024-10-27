%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Poi che 'l Ciel e la Fortuna"
scSubtitle = ""
scComposer = "Michele Pesenti"
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
  a2 a | a2 r4 a4 | a4 g8 f g4 g | f2 f
  r1 | a2 g | f2 e | r4 a4 a \ficta gs |
  a2 a | c b | a4 g8 f e4 g~| g8 f e2 d4
  
  e2 r4 a4~ | a \ficta gs a2 | \ficta gs2 r4 a4 | g2 f2 |
  e2 r4 c'4 | b2 a4 g8 f | \ficta gs4 a2 gs4 | a2 g4 f |
  e2 r4 f4 | e4 a2 \ficta gs4 | a2 r4 c4 | b2 a | g2 g
  
  c2 b g a e r4 f4 e d8 c d4 d 
  \time 3/2 c4 f4. e8 e2 d4 
  \time 2/2 e2 e \bar "||" e2 f e2 d4 c8 b |
  c4 d2 \ficta cs4 d2 d |
  a'4. g8 f4 e d2 \ficta cs2 | r4 d8 c d4 e e2 e |
  r4 e2^\markup{[coda]} d4 e1\fermata \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
  d4 c d c8 \ficta bf8 | a4 e' f e8 d | e4 a,2 g4 |
  a2 a8 g a b | c4. a8 d4 b4~ | b a b c | d2 c4 e4 ~ | e \ficta ds e2 |
  e2 e | e4 f g2 | r g,4 c | b g a2
  
  \ficta gs2 a | r4 b2 a4 | b2 e2~ | e4 d c2 |
  r4 c2 b8 a b4 e2 d4 | e2 r4 e4~| e d8 c d4 a |
  a2 a | c4 d e2 | e2 r4 a,4 | b4 g a2 | b4 c8 d e2~
  
  e4 f g g,8 a | b4 c8 d e2 | c4 d8 e f4 f, | g4 e2 d4 |
  \time 3/2 e4 f4. g8 a b a2 
  \time 2/2 g2 g | g4 c2 b4 c2 r4 a4~ | a g4 a2 | f2 f |
  f'4 e8 d c4. \ficta bf8 | a2 e' | a, r4 a g4 a8 b c4 a |
  g4 b2 a4 | b1 \fermata
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
  r1 d4 c d4 c8 \ficta bf  a4 d d \ficta cs | d2 d 
  e4 d8 c b4 e~ | e d e2 | a,2. g4 | a c b2 |
  r4 a4 c4. d8 | e4 c d b | c2. b8 a | g4 b2 a4
  
  b2 c2 | b4 e2 d4 | e2 c | b2 r4 a4 |
  c4. d8 e4 c | d4 b2 a4 | b2 b | r4 a4 b d~ | 
  d \ficta cs d2 | r4 a b2 | a4 c4. d8 e c | d4 e2 d4 | e2 b
  
  r4 c d2 | e c | r4 c4 d8 c b a | g4 a2 \ficta gs4 
  \time 3/2 a2. g4 f2 | \time 2/2 | e2 e |
  c d c f e4 d e2 | d2 d | 
  d'4 c8 \ficta bf a4 g | f8 e f g a2 | r4 a4 a2 | b2 r4 c4 |
  b2 a | g1 \ficta
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c {  
  r2 d2~ | d4 a d2  | r4 f4 e e | d2 d | a'2 g | 
  f e | d a | a' e | a a | a g | f4 e8 d c4. d8 |
  e4 g f2 
  
  e2 r4 a,4 | e'2 f | e a, e'2 f8 e f g | 
  a4 a, a'2 | g f | e4. d8 e2 | a,2 r4 d4 |
  a2 d | e4 f e2 a,2 a'2 g f e e
  
  a2 g4. f8 | e2 a,4 a'4~ | a8 g f e d2 | e4 a, b4 b4 |
  \time 3/2 a4 d4. e8 f g a2 
  \time 2/2 b2 b2 | c4 g2 f4 | g2 d | a4 b a2 |
  r4 a'4. g8 f e | d4. e8 f4 c | d4 c8 \ficta bf a4 a'4~ | 
  a8 g f e f2 | e a, e' f  | e1 \fermata
}
  
  
scWordsOneA = \lyricmode {
Poi che_'l Ciel e la __ _ _ _ For -- tu -- na

han con -- ver -- so in fu -- mo_e_in

pol -- ve quel -- la
ch_'el __ _ _ mi -- o __ _ _ _ 

bén ri -- _ sol -- ve in una a -- 
spra e cru -- _ _ _ _ del __ _ guer -- _ _ ra
non fia ma -- _ i 
so -- pra la ter -- ra
el più_in -- fe -- li -- ce
e __ _ _ _ _ scon -- _ _ _ so -- _ la -- to.
Per un cor a -- _ _ tor -- men -- _ ta -- to
non __ _ è al mon -- do

co -- _ _ me_è_il mi -- o 
[co -- me_è_il] mio.


}
    
scWordsOneB = \lyricmode {
  Ah, spie -- ta -- to mi -- _ _ o De -- sti -- no,
  tua pos -- san -- za bèn di -- _ mo -- stri! 
  Hor che son __ _ _ i pen -- _ _ _ sier no -- _ _ stri
  se_in un po -- sto
  si -- an __ _ _ _ _ sum -- _ mer -- _ _ si
  hor che_in tut -- _ to son con -- _ ver -- si
  i pia -- ce -- _ ri in __ _ _ _ _ tri -- _ _ _ sto __ _ sta -- to?
}

scWordsOneC = \lyricmode {
  Hor non val ar -- gen -- _ _  to et au -- ro
  a -- le non -- stre
  vo -- glie_o __ _ pom -- pe,
  ché l'a -- tro -- _ _ ce 
  
  Mor -- _ _ _ te rom -- _ _ pe
  i dis -- se -- gni in un __ _ _ _ _ mo _ -- men -- _ _ to,
  hor do -- po -- _ i chío veg -- gio spen -- to qual su -- a -- _ ve
  e __ _ _ _ _ dol -- _ _ _ ce __ _ sta -- to.
}

scWordsOneD = \lyricmode {
  Più non mo -- ro, più __ _ _ _ non vi -- vo,
  più non e -- gro, più non __ _ sa -- no, 
  più non sto, __ _ _ né me_a -- _ _ _ lon -- ta -- _ _ no.
  
  Cie -- co ve -- do, in fo -- _ _ _ _ co_a -- _ ghia -- _ _ cio,
  non son mu -- _ to
  e sem -- pre ta -- cio,
  pian -- go_e gri -- _ do
  sen -- _ _ _ _ za __ _ _ _ fia -- _ _ to.
}
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
