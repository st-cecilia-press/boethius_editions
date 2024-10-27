\version "2.24.1"

\include "english.ly"

#(set-global-staff-size 18)
#(set-default-paper-size "letter")

\header {
  title = "Pavane"
  composer = "Augustin Bassano"
  arranger = "Fitzwilliam Wind Band MS"
  opus = "3rd. line, Peter Holman"
}

ficta = { \once \set suggestAccidentals = ##t }

fourTwoCutTime = {
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
  \time 4/2
}

hideTimeSignature = {
  \override Staff.TimeSignature.stencil = ##f
}

global = {
  \key c \major

  \fourTwoCutTime
  \hide Staff.BarLine
  \override Staff.NoteHead.style = #'baroque
  \hideTimeSignature

}

globalEnd = {
  \undo \hide Staff.BarLine
}

cantusIVoice =  {

  \global

  \clef "G"

  \relative c'' {
    \repeat volta 2 {
      g\breve^\markup{\large\box{\bold A}} g a b1 b g2. a4 b2 c d1 e2. d8 c b4 c d1 a2. b4 c2. b4 a2. g4 g1 \ficta fs2 g\breve
    }
    \repeat volta 2 {
      g1 ^\markup{\large\box{\bold B}} g2 g g1. e2 a2. g4 f2 e d1 d 
      d'1 d2 d a b c2. b4 a2 c bf1 a2. g4 \ficta fs2 d'2 a b a4 b c2. b8 a g2 a fs2 \time 2/2 g1 \time 4/2 e\breve
    }
    \repeat volta 2 {
      g2 g a4 b c2 b1 r1 r2 d2 d d4 c2 b4 g a b1 r\breve r2 r4 b4 d2 r4 a4 c2 b4 c a b c2 b d2. c8 b a2. b4 c2. b4 a2. g4 g1 \ficta fs2 g\breve
    }
  }
  
  \globalEnd

}

cantusIIVoice =  {

\global

  \clef "G"

  \relative c' {

\repeat volta 2 {
   d1 d2 e1 d4 c d2 e f2 e1 fs2 g1 g d1 g2 g a f e4 d c2 d1 d2 d c e1 e2 d\breve d
}

\repeat volta 2 {
  e1 e2 e d1. e2 f2. e4 d2 c b1 b 
  r2 g'2 g g f g a2. g4 f2 a g2. f4 e1 d2 a' a g f f1 e2 f4 e d c d1 c\breve
  
}

\repeat volta 2 {
  e2 d4 e4. f8 g2 \ficta fs4 g1 r1 r2 b2 a b4 g2 g4 e \ficta fs4 g1 r\breve r4 g4 g2 r2 r4 f4 a2 g4 g f g a2 d,2 g f f e1 f d1 d d\breve
}

  }

\globalEnd

}

altusVoice =  {

\global

\clef "G_8"

\relative c' {
  
  \repeat volta 2 {
  b2. c4 d2 c2 g'2. f4 d2 c1 c4 d e2 d d1 d  b2. c4 d2 c1 b2 c4 d e f g1 f2 f e c1 c b2 a1 g\breve
  }
  
  \repeat volta 2 {
    c1 c2 c b1. c2 c2. bf4 bf2 g d'1 d 
    r2 d2 d d d d f1 c2 f2. e4 d1 cs2 d1. d2 d c c1 c2 \override Staff.TimeSignature.stencil = ##f c1 b2 c\breve
  }
  
  \repeat volta 2 {
    c2 b4 c2 b4 a2 g1 r1 r2 g'2 fs g4 e2 d4 c c d2 d d d4 c2 b4 g a b2 r4 b g2 r4 d'4 e2 e4 e d d c2 d b4 c d2. e8 d c1 c b a g\breve
  }
}

\globalEnd


}


tenorIVoice =  {

\global
 
 
 \clef "G_8"
 
 \relative c' {
   \repeat volta 2 {
     g1 d2 g c, d1 g2 r2 a1 d,2 d1 d r2 d'4. c8 b2 g d' d, e1 r2 d4 e f g a b c2 a g e fs2 g a d, d\breve
   }
   
   \repeat volta 2 {
     g1 e2 c d1. c2 c2. g'4 d2 e4 c d1 d r2 b'2 b g a g c1. c,2 g'1 r2 e2 fs2. g4 a d,2 d f4 a2 g1 f4 a2 a4 d,1 e\breve
   }
   
   \repeat volta 2 {
     r\breve r2 g2 a4 b c2 b g d' b4 c2 g4 c a g2 b a b4 g2 g fs4 g d g g b2 a a b4 e, fs8 d g2 fs4 g2. f8 e d4 e f g a1 a d,2 d'2. c4 a2 b\breve
   }
 }

\globalEnd

}

tenorIIVoice =  {

 \global
 
 \clef "G_8"
 
 \relative c {
   \repeat volta 2 {
     d1 g2 e1 g c,2. d4 e1 a2 g1 g r2 g1 c2 f,1 g2 g1 d2. e4 f g a2 e2. f8 g a2 d, d'2. c4 a2 b\breve
   }
   \repeat volta 2 {
     e,1 g2 g g1. g2 a2. d,4 d2 g g1 g g1 g2 b d b a2. b4 c2 a d,1 a'1 a fs2 g a c, e c1 c2 g'1 g\breve
   }
   \repeat volta 2 {
     r\breve r2 d2 e4 g2 fs4 g1 r1 r r2 g fs g4 e2 d4 e c d1 r4 d4 f2 r4 e4 e g d d e c d2. e4 f g a2. g8 f e4 c2 c4 f2 d1 d d\breve
   }
 }
 
 \globalEnd
 

}

bassusVoice = {

\global

\clef "F"

\relative c {
  \repeat volta 2 {
    g2. a4 b2 c1 b4 a b2 c a2. b4 cs2 d g,1 g g' g2 e d1 c g4 a b c d1 a2. b4 c1 d\breve g,
  }
  
  \repeat volta 2 {
    c1 c2 c g1. c2 f,2. g4 bf2 c g1 g g g'2 g d g f1 f, g a d d2 g, d' a4 b c1 f,2 a g1 c\breve
  }
  
  \repeat volta 2 {
    r\breve r2 g2 c4 b a2 g1 r1 r r2 g2 d' b4 c2 g4 c a g1 r4 b4 d2 r4 a4 e' c d b a2 g1 d'2. c8 b a2. g4 f1 g d' g,\breve
  }
}

\globalEnd

}

cantusIVoicePart = \new Staff \with {
  instrumentName = "Cantus I"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \cantusIVoice }

cantusIIVoicePart = \new Staff \with {
  instrumentName = "Cantus II"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \cantusIIVoice }

altusVoicePart = \new Staff \with {
  instrumentName = "Altus"
  midiInstrument = "trombone"
  \consists "Ambitus_engraver"
} { \altusVoice }

tenorIVoicePart = \new Staff \with {
  instrumentName = "Tenor I"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \tenorIVoice }

tenorIIVoicePart = \new Staff \with {
  instrumentName = "Tenor II"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \tenorIIVoice }

bassusVoicePart = \new Staff \with {
  instrumentName = "Bassus"
  midiInstrument = "trombone"
  \consists "Ambitus_engraver"
} { \bassusVoice }

\score {
  \new StaffGroup {
    <<     
      \cantusIVoicePart
      \cantusIIVoicePart
      \altusVoicePart
      \tenorIVoicePart
      \tenorIIVoicePart
      \bassusVoicePart
    >>
  }
  \layout {
    indent = 4\cm
    incipit-width = 2\cm
  }
  \midi {
    \tempo 1=70
    
  }
}

