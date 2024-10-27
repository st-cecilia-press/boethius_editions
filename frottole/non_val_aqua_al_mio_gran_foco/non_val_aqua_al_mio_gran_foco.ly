%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Non val aqua al mio gran foco"
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
\repeat volta 2 { 
  e2 e | e e | e d c c | 
  e a | r4 g2 f8 e | d4 e2 d4 | e2 e 
}

e a | r4 g8 f e d c b | c4 e2 d4 | e2 e

  e4 a, d2 | r4 c2 c4 | d4 e2 d4 | e2 e \bar "||"
  e e | e e | e d | c c |
  e a | r4 g2 f8 e | d4 e2 d4 | e2 e
  
  e^\markup{[1st coda]} a | r4 g8 f e d c b | c4 e2 d4 e2 e \fermata
  
  e4^\markup{[2nd coda]} e e2 | \ficta fs4 g2 fs4 | g4 g,8 a b c d e |
  f4 e2 d4 | e1 | e \fermata \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c' {  
  \repeat volta 2 {
    b4. a8 g f e4 | g4. f8 e d c4~| c8 d e2 d4 | e2 e
    a e' | e e | r2 a,4 a | gs2 gs
  }

a2 e' | e e | r a,4 a | g2 g
  
g4. a8 g2 | g2 r4 f4 | d g a2 | gs2 gs \bar "||"
b4. a8 g8 f e4 | g4. f8 e d c4~| c8 d e2 d4 e2 e |
a e' | e e | r a,4 a gs2 gs
  
a2 e' | e e | r a,4 a | g2 g\fermata
g4 a c2 | d2 d | g,4 b2 a8 g | d'4 c8 b a g a4~| a \ficta gs8 \ficta fs8 gs4 a4 gs1\fermata

}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G_8"

scMusicThree =   \relative c' {  
  \repeat volta 2 {
    r4 b4. a8 g f | e2 e4. f8 | g4 a2 \ficta gs4 | a2 a |
    c2 c | b2 c4. b8 | a4 b2 a4 | b2 b
  }
  
  c2 c | b4 c4. b8 a g | a4 b2 a4 | b2 b
  
  b4 c2 b4 | c2 a | a4 b2 a4 | b2 b \bar "||"
  r4 b4. a8 g f | e2 e4. f8 | g4 a2 \ficta gs4 | a2 a
  c2 c | b c4. b8 | a4 b2 a4 | b2 b
  
  c2 c | b4 c4. b8 a g | a4 b2 a4 | b2 b \fermata
  b4 c4. b8 a g | a4 g a2 | r2 g2 |
  a4 g r a | b a b c | b1 \fermata
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "bass"

scMusicFour =   \relative c {  
  \repeat volta 2 {
    e2 e | e4 g4. f8 e d | c4 a b2 | a2 a |
    a a | e' c | f4 e f2 | e2 e
  }
  
  a,2 a | e' c | f4 e f2 | e2 e
  
  e4. f8 g2 | c,2 f | f4 e f2 | e2 e \bar "||"
  e2 e e4 g4. f8 e d | c4 a b2 | a a |
  a a | e' c | f4 e f2 | e2 e
  
  a,2 a | e' c | f4 e f2 | e2 e\fermata |
  e2 a, | d1 e | d4 e f2 | e1 e\fermata
}


scWordsOneA = \lyricmode {
Non val a -- qua_al mio gran fo -- co che per pian -- to __ _ non _ s'a -- mor -- za,

an -- zi o -- _  gnhor _ più __ _ se __ _ rin -- for -- za

quan -- to più con quel mi __ _ _ sfo -- co.

Non val a -- qua_al mio gran fo -- co
che per pian -- to __ - non __ _ se_a -- mor -- za,

che per pian -- _ to __ _ non __ _ se __ _ a -- mor -- za,

che per pian -- to non se_a -- mor -- _ _ _ _ _ _ _ _ _ _ za.
}
    
  
  scWordsOneB = \lyricmode {    
   El mio fo -- co_ha tal u -- san -- za che per plan -- to __ _ 
   o -- gnhor più cre -- scie
  }
  
  scWordsOneC = \lyricmode {
    e ma -- gior pren -- de pos -- san -- za se_'l mio_in -- ten -- to __ _ non __ _ ri -- e -- scie. 
    
    El mio fo -- _ co __ _ è __ _ co -- _ me_el pe -- scie, 
    che nel' aqua ha_el pro -- _ _ prio lo -- co.
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
