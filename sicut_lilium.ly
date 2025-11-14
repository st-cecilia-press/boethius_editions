%score_options {"parts": 5, "verses": 1, "transposed": false}
scDate = "29-April-2019"

chExceptionMusic = {
  <c g>1-\markup { \super "5" }
}

filename = #(ly:parser-output-name parser)

% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
( sequential-music-to-chord-exceptions chExceptionMusic #t)
ignatzekExceptions)

scMark = { \once \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark \default }
scMarkA = \markup{ \bold \override #'(box-padding . 0.5) \box \large "A" }
scMarkB = \markup{ \bold \override #'(box-padding . 0.5) \box \large "B" }
scMarkC = \markup{ \bold \override #'(box-padding . 0.5) \box \large "C" }
scMarkD = \markup{ \bold \override #'(box-padding . 0.5) \box \large "D" }
scMarkE = \markup{ \bold \override #'(box-padding . 0.5) \box \large "E" }
scMarkF = \markup{ \bold \override #'(box-padding . 0.5) \box \large "F" }
scMarkG = \markup{ \bold \override #'(box-padding . 0.5) \box \large "G" }
scMarkH = \markup{ \bold \override #'(box-padding . 0.5) \box \large "H" }
scMarkI = \markup{ \bold \override #'(box-padding . 0.5) \box \large "I" }
scMarkJ = \markup{ \bold \override #'(box-padding . 0.5) \box \large "J" }
scMarkK = \markup{ \bold \override #'(box-padding . 0.5) \box \large "K" }

ficta = { \once \set suggestAccidentals = ##t }

dropLyrics = {
  \override LyricText.extra-offset = #'(0 . -4.5)
  \override LyricHyphen.extra-offset = #'(0 . -4.5)
  \override LyricExtender.extra-offset = #'(0 . -4.5)
  \override StanzaNumber.extra-offset = #'(0 . -4.5)
}

dropLyricsSmall = {
  \override LyricText.extra-offset = #'(0 . -1.0)
  \override LyricHyphen.extra-offset = #'(0 . -1.0)
  \override LyricExtender.extra-offset = #'(0 . -1.0)
  \override StanzaNumber.extra-offset = #'(0 . -1.0)
}
raiseLyrics = {
  \revert LyricText.extra-offset
  \revert LyricHyphen.extra-offset
  \revert LyricExtender.extra-offset
  \revert StanzaNumber.extra-offset
}
extendLV = #(define-music-function (parser location further) (number?) 
#{
   \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
   \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) 0)
#})
\layout{
            indent = 0\mm
              \context {
                \Staff
                  \consists "Ambitus_engraver"
                }
}

scStaffSize = 19 
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 100 2)
scTitle = "Sicut Lilium"
scSubtitle = ""
scComposer = ""
scArranger = ""
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key d \aeolian
  \time 4/2
  \autoBeamOff
}




scMinimumSystemSpacing = #8


scMusicOneName = "cantus"
scMusicOneClef = \clef "alto"

scMusicOne =   \relative c' {  
r\breve c1. bf2 a g f\breve r1 f'2. f4 d2 d e2. f4 g2 a g f2. e8[ d] e2 f\breve
r2 f g1 a1. e2 g1 c, c r2 c1 c2 bf g a2. bf4 c2. d4 e1 r r r2 a, ~ a g2 bf a g1 
f2 f' g f2. e8[ d] e2 f f c1 r2 d1 d2 c\breve bf a2. bf4 c1 r2 f1 f2 e2. \melisma 
f4 g2 a2. g4 f1 d2 f2. e4 f2 g2. f4 f1 \melismaEnd e2 f1 r2 f ~ f f2 f f f\breve \bar "|."
}

scMusicTwoName = "tenor"
scMusicTwoClef = \clef "tenor"


scMusicTwo =   \relative c' {  
r1 c ~ c2 bf a g f1 r bf2 a bf2. c4 d2 c bf1 g1. c2 d2. bf4 \melisma c1 \tuplet 3/2 {a1 bf2} c1 bf2 a \melismaEnd g1 f2 c'1 c2 
bf g a1 \tuplet 3/2 {g1 \melisma f2 } e4 d c2  f c \melismaEnd d bf' d c2. bf4 a2 g a2. g4 f1 e2 f1 r\breve r2 c'1 c2 d2 c d c a1 r2 a1 a2
bf2 \melisma f4 g a bf a2. g4 f e d c \melismaEnd f1 e2 f2 a1 a2 a2 f2 g2. f4 e2 f c1 r1 r2 f1 f2 a2 bf2. a4 f2 g g f c
d f1 g4 a bf2 bf a\breve
}
scMusicThreeName = "quintus"
scMusicThreeClef = \clef "tenor"


scMusicThree =   \relative c' {  
c1. bf2 a g f1 r\breve f'2. e4 d2. c4 bf2 a g1 c1. a2 bf a4 \melisma g8[ f] g1 f2. g4 a2 f
g f2. e8[ d] \melismaEnd  e2 f a1 a2 d,2. e4 f1 c4 \melisma d e f g2 a2. g4 f1 e2 f1 \melismaEnd c r2 c'1 c2 bf g a 
c2. \melisma d4 e f g2 e d c2. bf4 a g bf2 a g1 \melismaEnd f r2 f1 f2 d2. e4 f\breve r2 f g1 a2 \melisma f4
g a bf c2 d c1 \melismaEnd bf2 c\breve r2 a bf1 a2. bf8[ c] d1. bf2 c2. bf4 a2. g4 f2 bf1 bf2
d d c\breve
}

scMusicFourName = "altus"
scMusicFourClef = \clef "bass"



scMusicFour =   \relative c {  
r\breve r f1. e2 d c bf1 ~ bf2 f2 g1 r2 c1 f,2 f'2. \melisma d4 e1 c2 d c2. d4 e2%{^\markup "* flat??"%} f c1 \melismaEnd f, r1 r r2
f' e c2. bf4 a g f2 a g1 \tuplet 3/2 {f1 g2} a2. bf4 c1 r2 c d bf c c f,%{^\markup "# sharp??"%} e' d
c d e \melisma  c2. bf8[ a] g2 a bf c \melismaEnd f,\breve r f1. f2 bf1 g f\breve r r2 c'1 c2 f1 d c2 d1
bf2 d1 c1 f,2 \melisma f'2. e4 d c d1. \melismaEnd bf2 c\breve
}

scMusicFiveName = "bassus"
scMusicFiveClef = \clef "bass"

scMusicFive =   \relative c' {  

r1 r r f,1 ~ f2 e d c bf f g1 r r2 d'2 c2. d4 e2 f bf, d c1 f,\breve r2 f' e 
c ~ c4 \melisma bf a g f2 \melismaEnd a g1 f r\breve r r2 f' e c ~ c4 \melisma bf a g f2 \melismaEnd a g1 f r2 c' g a bf c f,1
r\breve c'1. c2 d1 bf a2. bf4 c1 r\breve c1. c2 f1 d c r2 f, ~ f f bf bf f1 r
r r2 c' ~ c a bf1 ~ bf bf f\breve
}




  
  
scWordsOneA = \lyricmode {
  Si -- cut li -- li -- um,
  si -- cut li -- li -- _ _ um,
  in -- ter spi -- _ _ nas,
  sic a -- mi -- ca me -- _ a,
  sic a -- mi -- ca me -- _ _ _ a,
  sic a -- mi -- ca me -- a,
  sic a -- mi -- _ _ ca me -- a,
  in -- ter fi -- li -- as, __ _ _
  in -- ter fi -- li -- as,
  in -- ter fi -- li -- as.
}
    
  

  
  
scWordsTwoA = \lyricmode {
Si -- cut li -- li -- um,
si -- cut li -- _ li -- _ _ um,
in -- ter spi -- nas, __ _ _
sic a -- mi -- ca me -- a,
sic a -- mi -- _ _ ca me -- _ _ _ a,
sic a -- mi -- ca me -- _ a,
in -- ter fi -- li -- as, __ _
in -- ter fi -- _ _ _  _ li -- as,
in -- ter fi -- li -- _ _ _ _ as,
in -- ter fi -- li -- as, fi -- li -- as.


}
    
  

  
  
scWordsThreeA = \lyricmode {
Si -- cut li -- li -- um,
Si -- cut li --  _ li -- _ _ um,
in -- ter spi -- nas, __ _
sic a -- mi -- _ ca me -- a,
sic a -- mi -- _ ca me -- a,
in -- ter fi -- li -- as,
in -- ter fi -- li -- as,
in -- ter fi -- _ _ _ _ li -- _ _ as,
in -- ter fi -- li -- as.
}
    
  

  
  
scWordsFourA = \lyricmode {
Si -- cut li -- _ _ li -- um,
in -- ter spi -- nas,
sic a -- mi -- _ _ _ _ ca me -- _ _ _ _ a,
sic a -- mi -- ca me -- a,
sic a -- mi -- ca me -- a,
in -- ter fi -- li -- as,
in -- ter fi -- li -- _ _ as,
in -- ter fi -- li -- as. 
}
    
  

  
  
scWordsFiveA = \lyricmode {
  Si -- cut li -- _ li -- _ um,
  in -- ter -- _ spi -- _ _ _ nas, __ _
  sic a -- mi -- ca me -- a,
  sic a -- mi -- ca me -- a,
  sic a -- mi -- ca me -- a,
  in -- ter fi -- li -- as, __ _ _
  in -- ter fi -- li -- as,
  in -- ter fi -- li -- as,
  in -- ter fi -- li -- as.
  
}
    
  


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
  oddFooterMarkup = \markup { 
  \column{
    \fill-line { \line {
      \italic \fromproperty #'header:title
      " - Page"
      \fromproperty #'page:page-number-string
    } } 
	\fill-line { \tiny { \line{© Cassandra Cohen (CC BY 4.0) | Edition Date: \scDate } } } }
  }
  
  evenFooterMarkup = \oddFooterMarkup
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
  \new ChoirStaff <<
   
    \new Staff = \scMusicOneName <<
      \set Staff.midiInstrument = #"oboe"
      \new Voice = "one" {
        
        \scGlobal 
        
         \scMusicOneClef
        
          \scMusicOne
        
        
      }
      
      <<
        
        
        
          \new Lyrics \lyricsto "one" { \scWordsOneA } 
          
        
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
   
    \new Staff = \scMusicFiveName <<
      \set Staff.midiInstrument = #"oboe"
      \new Voice = "five" {
        
        \scGlobal 
        
         \scMusicFiveClef
        
          \scMusicFive
        
        
      }
      
      <<
        
        
        
          \new Lyrics \lyricsto "five" { \scWordsFiveA } 
          
        
      >>
      
    >>
   
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = \scTempo
    }
  }
}
  }


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
