\version "2.24.1"


\header {
    title =  "23. Vaga fanciulla (Ballata)"
    composer = "Landini"
    encodingsoftware =  "Audiveris 5.3.1"
    encodingdate =  "2024-06-10"
    }

ficta = { \once \set suggestAccidentals = ##t }


\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
  \time 6/8
    \clef "treble_8" | % 1
     c2. | % 2
     d4  a8  a4  g8 | % 3
     f4.  f4  g8 | % 4
     a4. r8 r8  a8 | % 5
     b4   c8  d4. | % 6
     e8   d8  c8   b4  a8
    | % 7
     c4. r4. | % 8
     f4.  e4  d8   | % 9
     d4  e8  c4  d8 |
    \barNumberCheck #10
     e4. r8 r8 f8 | % 11
     e4  d8  d4  \ficta cis8 | % 12
     d4. r8 r8  d8 | % 13
     d4  a8  a4  g8  | % 14
     f4.  g4. | % 15
     a4  bes8  c4  bes8 | % 16
     d8   c8  bes8   a8  
    bes8  g8   | % 17
      a4. r4. | % 18
     c4  d8  e4. | % 19
     f4  d8  d4  c8 |
    \barNumberCheck #20
     e4  c8  c4   \ficta bes8
    | % 21
     a4. r8  r8 d8  | % 22
     c4  b8  b4   a8 | % 23
     c4. r8  b8   c8  | % 24
     d8   e8  d8   c8  d8  c8   | % 25
     b8   a8  g8   a8  b4 c2. \bar
    ".|"
    \repeat volta 2 {
        | % 27
        \key f \major
         a4. r8  c8   bes8  | % 28
         a8   g8  f8   g4. | % 29
         f4. r8 r8 a8 | \barNumberCheck #30
         g4  a8  bes4  a8 | % 31
         c4. r8 r8  c8  | % 32
         d4  e8  f4. | % 33
         e4  d8 r8  e8   d8 
         | % 34
          c8   d8  c8  
        bes8   a8  g8  | % 35
         a4  g8  g4  f8 | % 36
         a2. | % 37
         a4  \ficta b8  cis4. | % 38
         d4.   e8   d8  c8  | % 39
         \ficta b8   a8  g8   a4. |
        \barNumberCheck #40
         g4. r8 r8  g8 | % 41
         a4  bes8  d8   c8 
        bes8   | % 42
         a8   g8  f8   g4. | % 43
         f4. r4. | % 44
         f'4  d8  d4  c8 | % 45
         e4  c8  c4  bes8 | % 46
         d4  a8  a4  bes8 | % 47
         g4. r8 r8  d'8 | % 48
         d8   e8  d8   c8  
         d8  c8  | % 49
         bes8   a8  g8   a8  \ficta b4
        | \barNumberCheck #50
         c2. }
    }

PartPTwoVoiceOne =  \relative f {
    \clef "G_8" | % 1
     f2. | % 2
     d4.  e4. | % 3
     f2. | % 4
     d2. | % 5
     g4.  d4. | % 6
     a'4.  g4. | % 7
    r8 r8  f8  f4. | % 8
     f4.  g4.  | % 9
    r4.  c4  bes8 | \barNumberCheck #10
     a2. | % 11
     g4 f8  e4. | % 12
     d4. r4. | % 13
     d4.  e4. | % 14
     f4. r8 r8 e8 | % 15
     d4.  c4. | % 16
     f4.  e4.  | % 17
     d4. r4. | % 18
     c2. | % 19
     f4.  bes4. | \barNumberCheck #20
     a4.  g4. | % 21
    r8 r8  a8  d,4. | % 22
     f4.  g4. | % 23
    r8 r8  f8  a4. | % 24
     g4. r8 r8  f8  | % 25
     e4.  d4. | % 26
     c2. \bar ".|"
    \repeat volta 2 {
        | % 27
         d4. ~  d4  c8 | % 28
         d4.  e4. | % 29
         f2. | \barNumberCheck #30
         g4.  d4. | % 31
         c2. | % 32
         g'4.  f4. | % 33
         g2.  | % 34
         a4.  g4. | % 35
         d4.  e4. | % 36
         d2. | % 37
         a'2. | % 38
         g4.  d4. | % 39
         e4.  f4. | \barNumberCheck #40
         g2.  | % 41
         d4.  c4.  | % 42
         d4.  e4. | % 43
        r8  r8 f8  f4. | % 44
        r4.  g4. | % 45
         e4.  f4. | % 46
         d2. | % 47
        r8 r8  g8  g4. | % 48
         g4. r8 r8 f8 | % 49
         e4.  d4. | \barNumberCheck #50
         c2. }
    }


% The score definition
\score {
  \new StaffGroup {
    <<
      
        
        \new Staff \with {
  instrumentName = "Cantus"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
}
        <<

            
            \context Staff << 
                
                
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >>
            >>
        \new Staff  \with {
  instrumentName = "Tenor"
  midiInstrument = "oboe"
  \consists "Ambitus_engraver"
}
        <<

            
            \context Staff << 
                \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                >>
            >>
    >>   
      }
        
    \layout {}
    % To create MIDI output, uncomment the following line:
      \midi {\tempo 2 = 90 }
    }

