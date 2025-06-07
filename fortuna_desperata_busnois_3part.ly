



\version "2.24"

\include "english.ly"

#(set-global-staff-size 17.5)
#(set-default-paper-size "letter")

\header {
  title = "Fortuna Desperata"
  composer = "Busnois (?)"
  arranger = "Edited based on Florenz 121; Odhecaton Canti C; GB-Lbl Add. 31922"
}

ficta = { \once \set suggestAccidentals = ##t }
unficta = \unset suggestAccidentals
hidebarline = {
  \hide StaffGroup.SpanBar
  s\breve
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
  

  \fourTwoCutTime
  \override Staff.NoteHead.style = #'baroque


}


cantusVoice =  {

 
  
  \global
  \clef "G"

  \relative c' {
    \fourTwoCutTime
    \key f \major

    \set Staff.midiInstrument="choir aahs"

    f1.   e2  c1  r2 g'  a1. a 2 a1  g 
    f1.   d2  d1  e2 d  c f1 e2  f1  r  c'1. 
    a2  bf1

    d2 c4  bf  a1  r2 a  g2. f4  e1   f  g2 a  bf1. 
    a2  a g4 f  g1 
    % --- page ---
    
    a2. bf4  c2 c  d c4 bf2 a4 a1 g2  a1  r  a2. g8 f 
    
    e1  c  r2 c   d f   e1  f2 g2. f4 e d 

    e1 d2 f2. e4 d4 c  c1  d e  r2 f  g a  
    bf2. a4  g2 f2 e2. d8 e f\breve
    \bar "|."
  }

}

tenorVoice =  {

  \global

  \clef "G_8"

  \relative c {
    \fourTwoCutTime
    \key f \major

    f 1 f2 g a1 g f r2 c'2 d1 bf2 c d1. bf2 bf1
    c2 bf a f g1 f\breve. r1 r1 r1
    f'1. d2 e1 g2 f4 e d1 e2 f g1. f2 f e4 d e1 f
    r2 f f f4 d2 c4 a2 bf1 a c d c e r2 e f d c1 d2 e2. d4 c bf c1 d
    d4. c8 bf2 a1 bf g a bf2 a d2. c4 bf2 c g1 f\breve
 
    \bar "|."
  }



}
bassusVoice = \relative c' {

  \global

  \clef "F"
  \key f \major



  \relative c {
    \fourTwoCutTime
    f1 d2 c f1  c c' a4. g8 f4 e d1 ef d1. g2 g1
    c,2 g' f d c1 c'2. bf8 c d2 c a1 f g bf2 a f\breve  c1. c2 d1 g2 
    f ef1. f2 f1 c' f,2. g4 a2 f bf2 c4 g2 a4 f2 ef1
    f2 d a'4. g8 f4 e d1 a'\breve a4 g e2 d1 r2 a' d, c1 d2 a'1
    d,\breve f1 bf, c f2 d g f g2. a4 \ficta ef2 f c1 c'\breve
    \bar "|."
  }



}

Voice = \relative c {
  % Music follows here.
  \incipit \relative c {
    \time 2/2
    \clef "mensural-c4"
    \key f \major

    f1
  }

  \global

  \clef "G_8"



  \relative c {
    r\breve f1 g a d, g f2. e8 d e1 d g\breve r2 d'2 d d c1. c2 d bf a1 g a r2 d2 
    d2 d f2. e4 d2 c bf ef2. d4 c bf c1 bf2 g g g d'2 d bf1 a2 bf2 f r4 f4 g1 a d,1 
    e2 g1 f2 g e d1 g2 bf2. a4 g1 f2 bf2. c4 d2 g,2 f f g e d r4 d4 g1 a d, e2 g1 f2 bf2. c4 
    d2 g,1 f2 g2 e d d g\longa*1/2  \fine
  }



}

cantusVoicePart = \new Staff \with {
  % instrumentName = "Cantus"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \cantusVoice }


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
  \transpose f g \new StaffGroup  {
    <<
      \cantusVoicePart
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
    \tempo 2=120
  }
}
\paper {
  system-system-spacing.minimum-distance = #20
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
      \fill-line { \tiny { \line{© Aaron Elkiss (CC BY 4.0) | Edition Date: "20-Sept-2024" } } } }
  }
  
  evenFooterMarkup = \oddFooterMarkup
}