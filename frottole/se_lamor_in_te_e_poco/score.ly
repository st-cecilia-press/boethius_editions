

      #(set-default-paper-size "letter")
    
      #(set-global-staff-size scStaffSize )
    
    \book {
      
      \paper {
        
          system-system-spacing.minimum-distance = \scMinimumSystemSpacing
        
        print-page-number = ##f
        print-first-page-number = ##f
        top-margin = 0.5\in
        left-margin = 0.75\in
        right-margin = 0.75\in
        right-bottom = 0.5\in
        last-bottom-spacing = #'((basic-distance . 4) (padding . 4) (stretchability . 1))
      }

      \header{
        title = \scTitle
        subtitle = \scSubtitle
        meter = \scMeter
        poet = \scPoet
        composer = \scComposer
        arranger = \scArranger
        copyright = \scCopyright
        tagline = \scTagline
      }
      \score {
        \transpose g c' \new ChoirStaff <<
         
          \new Staff = \scMusicOneName <<
            \set Staff.midiInstrument = #"oboe"
            \new Voice = "one" {
              
              \scGlobal 
              
               \scMusicOneClef
              
                \scMusicOne
              
              
            }
            
            <<
              
              
              
                \new Lyrics \lyricsto "one" { \scWordsOneA } 
                \new Lyrics \lyricsto "one" { \scWordsOneB } 
                \new Lyrics \lyricsto "one" { \scWordsOneC } 
                \new Lyrics \lyricsto "one" { \scWordsOneD } 
                \new Lyrics \lyricsto "one" { \scWordsOneE } 
                
              
            >>
            
          >>
         
          \new Staff = \scMusicTwoName <<
            \set Staff.midiInstrument = #"oboe"
            \new Voice = "two" {
              
              \scGlobal 
              
               \scMusicTwoClef
              
                \scMusicTwo
              
              
            }
            
            <<
              
              
              
                \new Lyrics \lyricsto "two" { \scWordsTwoA } 
                
              
            >>
            
          >>
         
          \new Staff = \scMusicThreeName <<
            \set Staff.midiInstrument = #"oboe"
            \new Voice = "three" {
              
              \scGlobal 
              
               \scMusicThreeClef
              
                \scMusicThree
              
              
            }
            
            <<
              
              
              
                \new Lyrics \lyricsto "three" { \scWordsThreeA } 
                
              
            >>
            
          >>
         
          \new Staff = \scMusicFourName <<
            \set Staff.midiInstrument = #"oboe"
            \new Voice = "four" {
              
              \scGlobal 
              
               \scMusicFourClef
              
                \scMusicFour
              
              
            }
            
            <<
              
              
              
                \new Lyrics \lyricsto "four" { \scWordsFourA } 
                
              
            >>
            
          >>
         
        >>
        \layout { 
        }
        \midi {
          \context {
            \Score
            tempoWholesPerMinute = \scTempo
          }
        }
      }
    }
  
