



\version "2.22"

\include "english.ly"

#(set-global-staff-size 18.5)
#(set-default-paper-size "letter")

\header {
  title = "Die katzenpfothe"
  composer = "Anon"
  arranger = "Glogauer Liederbuch no. 13"
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

global = {
  \key c \major

  \fourTwoCutTime
  \hide Staff.BarLine
  \override Staff.NoteHead.style = #'baroque


}

globalEnd = {
  \undo \hide Staff.BarLine
  \bar "|."
}

discantusVoice =  {

  \incipit {
    \relative c'' {
      \time 2/2
      \clef "mensural-c1"
      \key c \major

      c\breve
    }
  }
  
  \global

  % cantus: checked against source
   \relative c'' {
    c1 g1 | \[ a2 g2 c1 \] | b2 b2 \[ a2 d2. \] c4 c2. a4 b2 | \[ c1 b1\fermata \] | b1 d2. c8[ b8] | a2 g2 c2 b4 a2 g4 g2. e4\ficta fs2 | g1 r2 g2 | g4 e2 f4 g2 a4 c2

    d2 b4 c4 a4 b4 g4 | e2 f4 g2 a4 b2 | c4 d2 b4 g4 c2 b4 | c2 r2 c2 c2 | d2 e2. c2. | d2 b4 g4 e4 a2 \ficta gs4  | a2 r4 d,4 e4 f4 g2. e4 f4 g4 a2 r4 a4 | b4 c4 d2 r4

    e4 c4 d4 | b2 c4 a4 b4 g4 a2 | f2. d2 g4 e4 f4 | g4 a2 b4 g4 a4 b4 c2 a4 b4 d4 a4 c4 g4 b4 | f4 a4 e4 g2 d2 f2 a2 e2 g2 b2 a2 c2 

    e2. | d4 a4 b4 d2 c2 b4 | c\longa*1/2
    \bar "|."
  }

  \globalEnd


}

tenorVoice = \relative c' {

  \global

  \clef "G_8"


  \incipit \relative c' {
    \time 2/2
    \clef "mensural-c3"
    \key c \major

    c\breve
  }

  % tenor: checked against source
   \relative c' {

    r1 c1 | f2 e2 c1 | g'1 f1 | e2 c2 d1 | c1 g'1\fermata | r1 d1 | f2 e2 c1 | d2 b2 \[ a1| g\breve \] | c2 g4 a2 b4 c2 | e4 f4 g2 e4 f4 d4 e4 | c4 a2 b4 c2 d4 e2
    
    f4 g2 e4 c4 d2 | c1 r1 | f2 g2 a2. f2. g4 e4 c4 a4 b2 | a2 r2 g4 a4 b4 c2. a4 b4 c4 d2 r4 | d4 e4 f4 g2. a4 f4 | g4 e2 f4 d4 e4 c4 d2 b2. g2 c4 a4 | b4 c4 d2 

    e4 c4 d4 e4 | f2 g4 d4 f4 c4 e4 b4 | d4 a4 c2 g2 b2 | d2 a2 c2 e2 | d2 f2 a2 g2 | f4 a4 g2 f4 e4 d2 | c\longa*1/2
    \bar "|."
  }


  \globalEnd
  % Music follows here.

}

contraVoice = \relative c {
  % Music follows here.
  \incipit \relative c {
    \time 2/2
    \clef "mensural-c5"
    \key c \major

    c\breve
  }

  \global

  \clef "F"



   \relative c {
    c1 c1 | d2 g2 c,1 | r2 e2 f2. e8[ d8] | c1 g'1 | c,4 d4 e4 f4 g1\fermata | g\breve | \[ d2 g2 \] c,1 | \[ g'1 d1 \] | e4. c8 e4. f8 g2 e4 c2 e2 d4 g2 c,2. f4 e2 

    a4 d,4 g4 e4 | a4 d,2 g4 c,2 g'4 c,2 d4 g2 c4 a4 g2 | c,2 d4 e4 f2 c2 | r2 c'2 c2 f,2 | d2 g4 c,2 f4 e2 | r2 f2 e4 f4 g4 c,2 r4 d4 g4 f4 d4

    f2 | g4 c,4 d4 g2 b4 c4 f,4 | e4 a2 d,4 g4 c,4 f2 | d2 r4 g2 e4 c4 d4 | g4 c,4 g'2 e4 a4 g4 c,4 | f2 e4 g4 d4 a'4 e4 g4 | d4

    f4 c2 e2 g4 d2 a'4 f2 a2 c2 | f,2 d2 f2 c2 | r4 f4 g2 d4 c4 g'2 | c,\longa*1/2
        
    \bar "|."
  }



  \globalEnd
}

discantusVoicePart = \new Staff \with {
  instrumentName = "Discantus"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \discantusVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
} { \tenorVoice }

contraVoicePart = \new Staff \with {
  instrumentName = "Contra"
  midiInstrument = "trombone"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \contraVoice }

\score {
  \new StaffGroup {
    <<
      \discantusVoicePart
      \tenorVoicePart
      \contraVoicePart
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
