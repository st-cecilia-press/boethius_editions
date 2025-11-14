



\version "2.24"

\include "english.ly"

#(set-global-staff-size 20)
#(set-default-paper-size "letter")

\header {
  title = "Pavane V: La Battaille"
  composer = "Tielman Susato (c. 1510/15 – after 1570)"
  arranger = \markup { \italic { Alderhande Danserye } (1551) }
}

ficta = { \once \set suggestAccidentals = ##t }
hidebarline = {
  \hide StaffGroup.SpanBar
  s\longa
  \undo \hide StaffGroup.SpanBar
}

fourTwoCutTime = {
  \once \override Staff.TimeSignature.stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature.text = \markup \musicglyph "timesig.C22"
  \time 4/2
}

gThree = {
  \clef "mensural-c1"
   \set Staff.clefGlyph = #"clefs.petrucci.g"
   \set Staff.clefPosition = #0
}

global = {
  \key c \major

  \fourTwoCutTime
  \override Staff.NoteHead.style = #'baroque


}


cantusVoice =  {

 
  
  \global
  \clef "G"

 \relative c'' {  
  \repeat volta 2{
  g1 g2 g e1 e2 f f1 f2 f d\breve 
  g2 g g g e g f e d1 c b\breve
  } 
  \repeat volta 2{
    r2 g2 a1 c1 b r2 g2 a b c d e e d c f f e1 d2 c b2 c1 b2 c\breve
  } 
  \repeat volta 2{
    r2 e2 g2. g4 f4 e d f e1 r\breve r2 e2 d f e1 r1
    r2 e2 d c b c1 b2 c\breve
  }
  \repeat volta 2{
    e1 e e8 e e e e4 g e8 e e e e4 g
    e1 e d d d2 e4 c d d e c d d e c d2 e2. d4 c1 b2 c\breve
  }
}




}
altusVoice = \relative c' {

  \global

  \clef "G_8"


 

 \relative c' {  
  \repeat volta 2{
    c1 c2 c c1 c2 c c1 c1. b4 a b1 b1 b2 b c1 c2 c bf2 g1 fs2 g\breve
  }
  \repeat volta 2{
    r2 b2 c2. b4 a2 f g1 r2 b2 c g2 g2 b c c b g c c c c b g g f g1 e\breve
  }
    \repeat volta 2{
      r2 c'2 e2. e4 d4 c b a c1 r\breve r2 c2 b a c1 r1 r2 c2 b g g f g1 e\breve
  }
    \repeat volta 2{
      c'1 c c8 c c c c4 g c8 c c c c4  g c1 c b1 b 
      b2 c4 c b b c c b b c c b b c2 g a g1 e\breve
  }

}



}
tenorVoice = \relative c' {

  \global

  \clef "G_8"




 \relative c' {  
    \repeat volta 2{
      g1 g2 g g1 g2 a1 a2 a a g\breve d1 d2 g2 g1 a2 g2. f4 d2 e c d\breve
  }
    \repeat volta 2{
      r2 d2 f1 e2 c d1 r2 d2 f d e2 g g g g g a1
      g2 g2. f4 e2 d2 c d1 c\breve
  }
      \repeat volta 2{
        r\breve r1 r2 e2 g2. g4 f4 e d f e1 r1
        r2 e2 d f e g2. f4 e2 d2 c d1 c\breve
  }
    \repeat volta 2{
      g'1 g g8 g g g g4 g g1 g8 g g g g4 c4 g1
      g8 g g g g4 d g8 g g g g4 d g2. e4 g2. e4 g2. e4 g2. f4 e2 f d1 c\breve
  }
}



}
bassusVoice = \relative c' {

  \global

  \clef "bass"




\relative c {  
    \repeat volta 2{
      c1 c2 c c1 c2 f,1 f2 f f g\breve g1 g2 g c1 f,2 c'2 g2 bf2 a1 g\breve
  }
    \repeat volta 2{
      r2 g2 f2. g4 a2 a g1 r2 g2 f g c g c c g c f,4 g a b c2 c,2 g' a g a g1 c,\breve
  }
      \repeat volta 2{
        r\breve r1 r2 c'2 e2. e4 d c b a c1 r1 r2 c2 b a c c g c g a g1 c,\breve
        
  }
    \repeat volta 2{
      c'1 c c8 c c c c4 e c8 c c c c4 e c1 c g\breve g2 c4 c g g c c g g c c g g c2 c f, g1 c,\breve
  }
}



}

Voice = \relative c {
  % Music follows here.
  \incipit \relative c {
    \time 2/2
    \clef "mensural-c4"
    \key f \major

    f\breve
  }

  \global

  \clef "G_8"



 \relative c {
   r\longa f\breve g a d, g f1. e4 d e\breve d g\longa r1 d'1 d d c\breve. c1 d bf a\breve g a r1 d1 
   d1 d f1. e2 d1 c bf ef1. d2 c bf c\breve bf1 g g g d'1 d bf\breve a1 bf1 f r2 f2 g\breve a d,\breve 
   e1 g\breve f1 g e d\breve g1 bf1. a2 g\breve f1 bf1. c2 d1 g,1 f f g e d r2 d2 g\breve a d, e1 g\breve f1 bf1. c2 
   d1 g,\breve f1 g1 e d d g\maxima*1/2  \fine
  }



}

cantusVoicePart = \new Staff \with {
 % instrumentName = "Cantus"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \cantusVoice }

altusVoicePart = \new Staff \with {
%  instrumentName = "Altus"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \altusVoice }
tenorVoicePart = \new Staff \with {
%  instrumentName = "Tenor"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \tenorVoice }

bassusVoicePart = \new Staff \with {
%  instrumentName = "Bassus"
  midiInstrument = "trombone"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \bassusVoice }

\score {
  \transpose c g \new StaffGroup {
    <<
      \cantusVoicePart
      \altusVoicePart
      \tenorVoicePart
      \bassusVoicePart
    >>
  }
  \layout {
    indent = 0
  %  incipit-width = 2\cm
    \context {
    \Staff
    measureBarType = "-span|"
  }
  }
  \midi {
    \tempo 1=70
  }
}
  \paper {
   system-system-spacing.minimum-distance = #15
   ragged-bottom = ##t
  ragged-last-bottom = ##t
  top-margin = 0.5\in
  left-margin = 0.75\in
  right-margin = 0.75\in
    bottom-margin = 0.5\in
   print-page-number = ##f
  print-first-page-number = ##f
    last-bottom-spacing = #'((basic-distance . 4) (padding . 4) (stretchability . 1))
     oddFooterMarkup = \markup { 
        \column{
          \fill-line { \line {
            \italic \fromproperty #'header:title
            " - Page"
            \fromproperty #'page:page-number-string
          } } 
      	\fill-line { \tiny { \line{© Monique Rio (CC BY 4.0) | Edition Date: "20-Sept-2024" } } } }
        }
        
        evenFooterMarkup = \oddFooterMarkup
  }