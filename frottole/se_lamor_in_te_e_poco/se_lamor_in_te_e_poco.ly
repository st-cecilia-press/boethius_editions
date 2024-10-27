%score_options {"parts": 4, "verses": 1, "transposed": false}
scDate = "DATE"

\include "../include/sc_functions.ly"
\include "../include/sc_layout_vocal.ly"

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 120 4)
scTitle = "Se l'amor in te è poco"
scSubtitle = ""
scComposer = ""
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key c \major
  \time 2/2
  
}



scMinimumSystemSpacingTranspose = #8
scMinimumSystemSpacing = #8


scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"

scMusicOne =   \relative c'' {
  \repeat volta 3{ 
     g4 g f a4~ | a g8 f e4 f |
     g2 g4 f8 e | f4 d g2 |
     f4 a2 \ficta gs4 | a2 a4 g8 f
  }
  
  g4 g f2 | g4 a2 \ficta gs4 |
  c4 b8 a b2 |
  c4 c b8 a g f | e4 d8 c d4 d 
  c2 c \bar "||"
  
   g'4 g f4 a4~ | a g8 f e4 f | g2 g4 f8 e | f4 d g2 |
  f4 a2 \ficta gs4 | c b8 a b2 |
  r4 c2^\markup{[1st coda]} b8 a | \ficta gs4 a2 gs4 |
  a2 b2 \time 3/2 g2 r4 a2^\markup{[2nd coda]} \ficta gs4 |
  \time 2/2 a1 a a1~ a1 \fermata \bar "|."
}

scMusicTwoName = "altus"
scMusicTwoClef = \clef "G"

scMusicTwo =   \relative c' {  
  \repeat volta 3 { 
    c4 c a2 | f4. g8 a4 a | c2 c |
    a4. b8 c4 a4~ | a8 b c d e4 e | c2 c
  }
  c4 c a2 | e'2 e4 e | e2 e | e4 e e2 | e4 e, e d |
  e2 e
  
 
  
  c'4 c a2 | f4. g8 a4 a | c2 c | a4. b8 c2 |
  a8 b c d e4 e | e2 e | r4 e2 d8 c | e4. d8 e2 | 
  e2 r4 g4~ \time 3/2 g8 f e2 d4 e2 |
  \time 2/2 c2 d4 a4~ | a g8 f e4 a | f2. g4 a1 \fermata
  
}

scMusicThreeName = "tenor"
scMusicThreeClef = \clef "G"

scMusicThree =   \relative c' {  
  \repeat volta 3 { 
    e4 e d f4~ | f e8 d c4 d | e2 e |
    d4 f e2 | d4 c b2 | a2 a 
  }
  
  e'4 e d4. c8 b4 a b2 |
  a2 g | a4 a g2 | g4 a2 g4 | a2 a
  
  e'4 e d f~ | f e8 d c4 d | e2 e |
  d4 f e2 | d4 c b2 | a g | a1 | b2 b|  c d 
  \time 3/2 e a, b \time 2/2 a a |
  r4 d2 c4 d4 f4. e8 d4 a1\fermata
}

scMusicFourName = "bassus"
scMusicFourClef = \clef "G_8"

scMusicFour =   \relative c {  
  \repeat volta 3 {
    c4 c d2 | r4 d a d | c2 c | d4 d c2 |
    d4 a e'2 | f2 f4 e8 d
  }
  
  c4 c d2 | e2 e4 e |
  a,2 e' a,4 a e'2 |  c4 b8 a b4 b | a2 a |
  
  c4 c d2 | r4 d4 a d | c2 c | d4 d c2 |
  d4 a e'2 | a, e' | a,1 | e'2 e a g |
  \time 3/2 e f e \time 2/2 f d | d a | 
  d1 a\fermata
}




  
  
scWordsOneA = \lyricmode {
  Se l'a -- mor in __ _ _ te è po -- co, que -- sto_ad -- vien per mia gran __ _ _ pe -- na. __ _ _ 
  Sciol -- ta sia la ca -- _ te -- _ _ na che me tien __ _ _ _ _ in __ _ que sto fo -- co!
 
  Se lá -- mor in __ _ _ te è po -- co, que -- sto_ad -- vien per mia gran __ _ _ pe -- _ _ na,
  mi -- _ _ a __ _ gran pe -- _ na, [mi -- a gran] pe -- na. __

}
    
    scWordsOneB = \lyricmode {
        \set stanza = #"1. " Cer -- car vo -- glio_o -- _ _ gni sen -- tie -- ro 
      per u -- scir de tan -- ta __ _ _ guer -- ra, __ _ _
      Que -- sta pe -- na m'é si_ac -- cer -- _ _ ba, sfo -- gar vo -- _ _ _ glio in __ _ qual -- che lo -- co.
    }
    
    scWordsOneC = \lyricmode {
      poi -- chío ve -- do_el __ _ _ tuo pen -- sie -- ro con -- tra mi ar -- ma -- to __ _ in ter -- ra. __ _ _ 
      
    }
    
    scWordsOneD = \lyricmode {
      \set stanza = #"2. " Già più vol -- te __ _ _ m'hai mo -- stra -- to in -- tra guer -- ra, o -- dio __ _ e sde -- gno, __ _ _ 
      Non sta -- rò più nel tuo re -- _ _ gno, poi di me __ _ _ _ tu __ _ _ pi -- gli gio -- co.
    }
  
  scWordsOneE = \lyricmode { 
    fen -- ge -- rò te __ _ _ de -- spe -- rar -- te poi -- ché m'hai a -- ban -- do -- _ _ na -- to __ _ _ 
  }

  
  
scWordsTwoA = \lyricmode {

}
    
  

  
  
scWordsThreeA = \lyricmode {

}
    
  

  
  
scWordsFourA = \lyricmode {

}
    
  


\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
