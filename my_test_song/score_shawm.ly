#(set-global-staff-size scStaffSize )
\book { 
   \bookOutputSuffix "shawm"
  \paper {  
    system-system-spacing.minimum-distance = \scMinimumSystemSpacing
    
    print-page-number = ##f
    print-first-page-number = ##f
    top-margin = 0.5\in
    left-margin = 0.75\in
    right-margin = 0.75\in
    right-bottom = 0.5\in
    last-bottom-spacing = #'((basic-distance . 4) (padding . 4) (stretchability . 1))
    oddFooterMarkup = \markup { 
      \column{
        \fill-line { \line {
          \italic \fromproperty #'header:title
          " - Page"
          \fromproperty #'page:page-number-string
        } } 
        \fill-line { \tiny { \line{© Monique Rio (CC BY 4.0) | Edition Date: \scDate } } } }
    }
    
    evenFooterMarkup = \oddFooterMarkup
  }

  \header{
    title = \title
    subtitle = \scSubtitle
    meter = \scMeter
    poet = \scPoet
    composer = \scComposer
    arranger = \scArranger
    copyright = \scCopyright
    tagline = \scTagline
  }
  \score {
    \new StaffGroup  \transpose \scTransposeFrom \scTransposeTo <<
    
      
      \new Staff = \scMusicOneName <<
          \new Voice {
      s\breve \break
      }
        \set Staff.midiInstrument = #"oboe"
        \new Voice = "one" {
          \scGlobal 
          \scMusicOneClef
              \incipit {
    \relative c'' {
      \time 2/2
      \clef "mensural-c1"
      \key c \major

     g1
    }
  }
          \scMusicOne
       
        }
     
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