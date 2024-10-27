



\version "2.24"

\include "english.ly"

#(set-global-staff-size 18)
#(set-default-paper-size "letter")

\header {
  title = "Fortuna Desperata"
  composer = "Johannes Martini"
  arranger = \markup { \italic {  Casanatense 2856 } }
}

ficta = { \once \set suggestAccidentals = ##t }
unficta = \unset suggestAccidentals
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
  

  \fourTwoCutTime
  \override Staff.NoteHead.style = #'baroque


}


cantusVoice =  {

 
  
  \global
  \clef "G"

\relative c' {
    \fourTwoCutTime
\key c \major

    \set Staff.midiInstrument="choir aahs"

    f\breve  \[ f1 e \]  c\breve  r1 g'  a\breve  a1 a  a\breve  g 
        f\breve.   d1  d\breve  \[ e1 d \]  c f\breve e1  f\breve  R  c' 
        c1 a  \ficta bf\breve\unficta  

    d1 c  a\breve  r1 a  g1. f2  e1 e  f r  \[ g a \]  bf\breve. 
         a1  a f  g\breve 
    % --- page ---
     
    a1. \ficta bf2  c1 c  d c2 \ficta bf1 a2 a\breve g1  a\breve  R  a1. g4 f 
       
        e\breve  c  r1 c  \[ d f \]  e\breve  f1 g1. f2 e d 

    e\breve d1 f1. e2 d1  \[ c\breve  d \]  e  r1 f  g a  
        bf1. a2  g f f\breve e1  f\longa*1/2
    \bar "|."
}




}
altusVoice = \relative c' {

  \global

  \clef "G_8"

\key f \major
 

 \relative c {
    \fourTwoCutTime
    \key f \major

    R\breve*4 | r1 r2 f | f2. g4 a2. bf4 | c2. f,4 f2 bf | bf2. c4 d2 e |
        f2. bf,4 bf1 | r2 bf1 a2 | bf f'2. e4 

    d2. c4 c1 \ficta b2\unficta | c a2. bf4 c2 | c,2. d4 e f g a |
        f2 e4 d c2 f | f2. g4 a2. bf4 | c2. f,4 f2 f'1 e2

    f1 | d2 g2. f4 d2. e4 f2. e4 f2 | c1 r | c2 c2. d4 e2.
         f4 g2. c,4 c1\ficta b2 c2. bf4 | a4 g c1 bf4 a | g1

    f1 | r2 bf bf2. c4 | d2. e4 f2. e4 | c2 f d f2. e4 d c d2 c4 bf |
    % --- page ---
    c1. a1 g4 f g1 | a1. bf2 | c1 f,2 c'1 d2 e1 | c r2 f, |
        f2. g4 a2. bf4 | c2. f,4 f2 r | c' d e4 f g2 |

    f2 a2. g4 f1 e2 f f, | f2. g4 a2. bf4 | c2. bf4 g1 | r2 c2. d4 e2.
         d4 c1 \ficta b2\unficta | c1. bf4 a | bf2 a4 g f1 | R\breve |
        r2 g 

    a2 c1 \ficta b4 a \ficta b!1 | c4 d e f g2 c,1 d2 c f1 e2 f f, |
        f2. g4 a2. bf4 | c2. f,4 f1 | c'2. d4 c1 | a\longa*1/2
        
    \bar "|."
}



}
tenorVoice = \relative c' {

  \global

  \clef "G_8"

\key f \major


\relative c {
    \fourTwoCutTime
    \key f \major

    r1 r2 f | f2. g4 a2. bf4 | c2. f,4 f2 e4 d | c2 f1 e2 | f2. e4 c1 |
        r2 c' c2. bf4 | a2. bf4 c2 d |

    g,2. a4 bf2 c | f,1 r2 bf, | bf2. c4 d2. \ficta e4\unficta | f2. bf,4 bf1 | c2 e f g |
        c,1 r2 f | f2. g4 a2. bf4 | c2. f,4 f\breve

    e1 | a\breve | g1 \[ f | g \] e2 g1 f2. g4 a2. g4 f e f2 d | 
        c f1 e2 | g1 c,2. d4 | e2. f4 g1 | f2 a2. g4 f1 e2 f2. bf,4 |

    bf2. c4 d2. e4 | f2 bf, f' g | a1 bf2 d2. c4 bf a bf2 a4 g |
    
    % --- page ---
    f2 a2. g4 f e | f2 e4 d c2 e | d f f g | a2. bf4 c2. f,4 | f1 r2 e |
        f e4 d c2 d | c f1 e2 |

    f2 c'2. bf4 a1 g4 f e1 | r2 c'2. bf4 a2 | g1 f | d\breve |
        r1 c | d2 f e2. c4 | c2. d4 e2. f4 | g2. c,4 c1 | \[ g'1 a \] |

    r2 f f2. g4 | a2. bf4 c2. f,4 | f2 e d1 | c2 c'2. bf4 a2.
         g4 f2. e4 d2 | c1 r2 d | bf e d4 e f g\unficta | 

    c,2 f c c'1 bf4 a g1 | f\longa*1/2
    \bar "|."
}



}
bassusVoice = \relative c' {

  \global

  \clef "bass"
\key f \major



\relative c, {
    \fourTwoCutTime
    \key f \major

    r2 f f2. g4 | a2. bf4 c2. f,4 | f2 f f2. g4 | a2. bf4 c2. f,4 |
        f2 f f2. g4 | a2. bf4 c2. f,4 | f1 r | R\breve | r2 bf bf2. c4 |

    d2. \ficta e4 \unficta f2. bf,4 | bf1 r | R\breve | r2 f f2. g4 | a2. bf4 c2. f,4 |
        f2 f f2. g4 | a2. bf4 c2. f,4 | f2. g4 a2. bf4 | c2. f,4 f1 | 
        R\breve | r1 r2 f' |

    f2. g4 a2. bf4 | c2. f,4 f2 c | c2. d4 e2. f4 | g2. c,4 c2. f,4 | 
        f2. g4 a2. bf4 | c2. f,4 f1 | r1 r2 bf | 
        bf2. c4  d2. e4 | f2. bf,4 bf1 | 
        R\breve |
    % --- page ---
    r2 f' f2. g4 | a2. bf4 c2. f,4 | f1 r | r2 f, f2. g4 | a2. bf4 c2. f,4 |
        f2 f f2. g4 | a2. bf4 c2. f,4 | f1 f2. g4 | 

    a2. bf4 c1 | f,2. g4 a2. bf4 | c2. f,4 f1 | r2 f' f2. g4 | 
        a2. bf4 c2. f,4 | f2. c4 c2. d4 | e2. f4 g2. c,4 | c1 r1 | r1 r2 f, |

    f2. g4 a2. bf4 | c2. f,4 f1 | R\breve | r1 r2 f' | f2. g4 a2. bf4 |
        c2. f,4 f1 | R\breve | r2 f, f2. g4 | a2. bf4 c2. f,4 | 
        f\longa*1/2

    \bar "|."
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
   \new StaffGroup  {
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
      	\fill-line { \tiny { \line{© Monique Rio (CC BY 4.0) | Edition Date: "20-Sept-2024" } } } }
        }
        
        evenFooterMarkup = \oddFooterMarkup
  }