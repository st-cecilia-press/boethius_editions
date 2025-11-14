\version "2.24.1"
\include "english.ly"

#(set-global-staff-size 19)


\header {
  composer = "Thomas Weelkes"
  origin = "Ayeres or Phantasticke Spirites"
  tagline = ""
  title = "Strike It Up, Tabour!"
}

global = {
  \key f \major
  \time 3/4
  \autoBeamOff
  \dynamicUp
  \override NoteHead.style = #'baroque
}

sopranoVoice =  \relative c' {
\global
  \repeat volta 2 {
    \time 3/4 r2. | f'4. c8 d4 | c4 a bf | a4. c8 d4
    c4 a bf | a4. c8 bf4 | a4 g g
    \alternative { { a4 a2 } { \time 4/4 a4 a2 } }
  }

  \repeat volta 2 {
    c4 | d4 c d e | f4( e8 d) c4 a |
    bf4 c bf g a2 a4 a4
    | c c d d | e2. f8 e | d4 e8 d c4   d8 c |
    bf4 c8 bf a4 c4 | d f8 ef d c bf a | g4 f g2
    \alternative { { a2. } { a1^\fermata } }
  }

}

altoVoice = \relative c' {
  \global
  \repeat volta 2 {
  f'4. c8 d 4 | 
  c a bf | a4. c8 d4 |
  c4 a bf |
  a4. c8 d4 | 
  c4 a g | 
  f2 e4 
  \alternative { { f2 f4 } { \time 4/4 f4 f2 } }
  }
  
  \repeat volta 2{
    a4 bf a bf a8[ g] | f4.( g8) a4 c 
    d c d e |
    f( e8[ d]) c4 f, |
    a4 g a b |
    c4 bf8 a g4 f |
    bf8 a g4 a8 g f4 |
    g8 f  e4 f8 g a a |
    bf4 d8 c bf a g f |
    e4 f2 e4 
    \alternative { f2. } { f1\fermata }
  }
}

tenorVoice = \relative c {
  \global
  \clef "G_8"
  \repeat volta 2 {
    f4. f8 f4 | f4 f f | f4. f8 f4 | f4 f f | f2 f4 | f2 g4 |
    a8[ bf] c2
    \alternative { { f,2 f4 } { \time 4/4 f2 f4 } }
  } 
  \repeat volta 2 {
    r4 r1 r2 r4 f | 
    bf a bf c | 
    f,2 f4 f | f' e f g | c,2. d8 c |
    bf4 c8 bf a4 bf8 a | g4 a8 g f4 f'8 e d c bf2 bf4 | c4 d c2 
    \alternative { { f,2. } { f1\fermata } }
  }
  
}  
  
cantusLyrics = \lyricmode {
  \repeat volta 2 {
    Strike it up Ta -- bor and pipe us a fa -- vour, thou shalt be well paid for thy
    \alternative { { la -- bour } { \time 4/4 la -- bour } }
  }
  \repeat volta 2 {
    I meane to spend my shoe sole to dance a -- bout the May pole, I will be blith and briske
    Leap and skip hop and trip Turne a -- bout in the rout,
    Un -- till ve -- ry wea -- ry wea -- ry joyntes can scarse
    \alternative { { friske. } { friske. } }
  }
}

altusLyrics = \lyricmode {
  \repeat volta 2 {
    Strike it up Ta -- bor and pipe us a fa -- vour, thou shalt be well paid well paid for thy
    \alternative { { la -- bour } { \time 4/4 la -- bour } }
  }
  \repeat volta 2 {
    I meane to spend my shoe  sole to dance a -- bout the May __ pole
    I will be blith and briske, blith and briske
    ile leap and skip hop and trip turne a -- bout in the rout
    un -- till ve -- ry wea -- ry wea -- ry joyntes can scarse
    \alternative { { friske. } { friske. } }
    
  }

}

tenorLyrics = \lyricmode {
    \repeat volta 2 {
    Strike it up Ta -- bor and pipe us a fa -- vour, thou shalt be well paid for thy
    \alternative { { la -- bour } { \time 4/4 la -- bour } }
    
    \repeat volta 2 {
      to dance a -- bout the May -- pole I will be blith and briske
      leap and skip hop and trip
      turne a -- bout in the rout un -- till ve -- ry wea -- ry joyntes can scarse
      \alternative { { friske. } { friske. } }
     }
  }
}

\score {
  \transpose f' bf << {
  \new Staff \with {
    instrumentName = "Cantus"
    midiInstrument = "oboe"
  } { \sopranoVoice }
  \addlyrics { \cantusLyrics } }
  
  { \new Staff \with {
    instrumentName = "Altus"
    midiInstrument = "oboe"
  } { \altoVoice }
  \addlyrics { \altusLyrics } }
  
    { \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "oboe"
  } { \tenorVoice }
  \addlyrics { \tenorLyrics } }
  >>
  \layout { }
  \midi {
    \tempo 4=180
  }
}
