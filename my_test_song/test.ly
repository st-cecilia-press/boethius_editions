
scDate = "10-Jan-2017"
scStaffSize = 16
scStaffSizeTranspose = 16
#(ly:set-option 'midi-extension "mid")

scTempo = #(ly:make-moment 120 4)
scTitle = "Fly Love Aloft"
title = "Something Else"
scSubtitle = ""
scComposer = "John Wilbye"
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""

\include "english.ly"

scGlobal= {
  \key g \major
  \time 4/2
  \autoBeamOff
}

scTransposeFrom = g'' 
scTransposeTo = c''


scMinimumSystemSpacingTranspose = #8
scMinimumSystemSpacing = #12
scMusicOneName = "cantus"
scMusicOneClef = \clef "treble"
scMusicOneClefTransposed = \clef "treble"
scMusicOne =   \relative c'' {  

  g8 f g a b4 g4 d'1 r4 
  d4 d b a g g fs g2 r2
  d'8 c d e fs4 d d d
  g2 fs8 e fs g a4 g e4. fs8 g4 g fs4 g 
  e2 d d d4 d 
  d4 d e4. d8 c4 b4 a2 a4 
  d4 e f e e fs2 g4 e4 ~ e4 d4 d2 b2 r2 r4
  g'4 g g e4. d8 c4 f4 e d d cs d1 r4 
  d4 d d b4. a8 g2 r4 c4 c4. b8 a4 g fs4 g4 a b
  a2 b g 
  \repeat volta 2{
    d'2 r4 
    d4 d4. c8 b4 d4 c4 b a2 g1 r2 
    d'2 d4. c8 b4 d c b a2 g2 r4
    d'4 ~ d8 d8 c4 d2 b2 
  
    g4 g8 a8 b4. c8 d2 d4 d8 e8 fs4. g8 a2. a4 g4 fs4 e2 fs2 r2
    r2 r4 g4 ~ g8 e8  f4 e4 e d2 g,4 c4 ~ \time 2/2 c4 b4 a2
  }
  
  \alternative {
    { b2 g } { \time 4/2 b\breve } 
  } \bar "|."
}

#(set-default-paper-size "letter")


%\include "score_original.ly"
\include "score_shawm.ly"

\version "2.22.1"  % necessary for upgrading to future LilyPond versions.