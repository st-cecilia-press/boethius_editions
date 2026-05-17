\version "2.24.1"
\include "english.ly"


\header {
  title =  "Redit etas aurea"
  composer = "Anonymous"
}

ficta = { \once \set suggestAccidentals = ##t }


PartPOneVoiceOne =  \relative c {
  \time 6/8
  \clef "G_8"
  
  \repeat volta 2 {
    % 1
    d4. e4 f8 g4. c, d d e r |
    f g f8 e d d4. c2. d4. r |
    % 9 
    f f e e d d c r |
    d e4 f8 g4. f8 e d f4.~f4 g8 a4. r |
    % 17
    b c b a a g a r |
    b a g a bf4 a8 bf4 g8 a4. r |
    % 25
    f e f g f4 e8 d4. c r |
    d e f4. e4 d8 e4. f g r |
    % 33
    a4 b8 a4. g a4 g8 f4.~f4 \melisma e8 d4. r |
    a'4 b8 c4 b8 g4. a g f e r |
    % 41
    f4 g8 a4 g8 f8 e d c4. a'4.~a4 g8 e4. r |
    a4 b8 c4 b8 g4. a g f e r |
    %49
    c4 d8 f4 g8 a4. g f e \melismaEnd d r 
    
  }
  
  \pageBreak
 
  
  \repeat volta 2 {
    d4. e4 f8 | g4 f8 e4 d8 | e4 f8 e4. | d4. r |
    e4. f8 g f | e4 d8 f4. | g4.~g4 a8 | b4. r |
    c d | c4 b8 g4 a8 | b4 a8 f4. | g r |
    f e f g4 a8 | c4.~c4 b8 | a4. r |
    d4. c8 b a | g4. a | f4 g8 f8 e d | d4. r |
    f g a c | d4 c8 bf4. | a r |
    bf4. a4 g8 | f4. g | bf c4 bf8 |
    a4 f8 g4 r8 |
    a4 bf8 c4 bf8 | a4. g f4 e8 d4. e r |
    d f g f | a4 \melisma g8 e4. d r |
    c' a4 bf8 | c4 bf8 a4 g8 |
    f4 g8 e d c | d4 a8 c4 d8 | f4 g8 a4 r8 |
    c4 d8 c4 bf8 | a4 g8 f4 g8 | e d c d4 c8 |
    f4 g8 a4 bf8 | g4. a4 r8 | a4 g8 bf4 c8 |
    a g f e4. e r \melismaEnd d4. r
  }
  
}

wordsOne = \lyricmode {
  Re -- dit _ e -- tas au -- re -- a.
  Mun -- dus re -- _ _ no -- va -- tur.
  Di -- ves nunc de -- pri -- ma -- tur,
  Pau -- per _ ex -- al -- _ _ ta -- _ tur.
  Om -- ni su -- o prin -- ci -- pi.
  Plebs con -- gra -- tu -- la -- _ _ _ tur.
  
  Nec est lo -- cus sce -- _ le -- ri,
  Sce -- lus da -- tur _ fu -- ne -- ri,
  Scan -- _ da -- la fu -- _ gan -- tur.
}

wordsTwo = \lyricmode {
  De -- us _ re -- gem con -- tu -- lit
  No -- bis pre -- _ _ o -- pta -- tum.
  Ter -- ra cor -- nu pro -- tu -- lit
  Co -- pi -- _ e di -- _ _ ta -- _ tum;
  Mur -- mur om -- ne po -- pu -- li
  Pror -- sus est se -- da -- _ _ _ tu;
  Plebs sub pa -- ce re -- _ gi -- a
  Gau -- det pax ju -- _ sti -- ti -- a
  Se -- _ se o -- scu -- _ lan -- tur.
}

wordsThree = \lyricmode {
  Pi -- us __ _ po -- _ tens __ _ hu -- _ mi -- lis,
  Di -- ves __ _ _ et __ _ ma -- tu -- _ rus
  
  E -- ta -- te __ _ sed __ _ do -- _ ci lis
  Et re rum se -- _ cu -- _ rus.
  Su -- a -- _ _ rum pre -- fi -- _ ci -- _ _ tur
  An -- gli -- e, da -- tu -- _ _ rus.
  Ra -- pi __ _ nis in -- te ri -- _ tum __ _ _ 
  Cle -- _ ro -- _ iu -- vis ad -- _ i -- tum
  Lo -- cum ve -- ri ta -- ti.
}

wordsFour = \lyricmode {
  Gau -- de -- _ at __ _ Pi -- _ cta -- _ vi -- a,
  Iam re -- _ _ ge __ _ di -- ta -- _ ta,
  
  Tu -- me -- scat __ _ Nor -- _ man -- _ ni -- a,
  Au -- ro co -- ro -- _ na -- _ ta;
  
  Va -- sco, __ _ _ Sco -- tus, Bri -- _ to -- _ _ nes
  Ob -- ti -- nent op ta -- _ _ ta;
  
  Si -- ne __ _ do -- lo Cam -- bri -- _ a __ _ _ 
  Ser -- _ vit __ _ et Hi -- ber -- _ ni -- a
  
  No -- stre po -- te -- sta -- ti.
}

PartPTwoVoiceOne =  \relative f {
  
  \time 6/8
  \clef "G_8"
  \relative c' 
  \repeat volta 2 {
    % 1 
    a4. a g g f f e r |
   d c d e f4.~f4 e8 d4. r |
   % 9
   a'4. a g g f f e r |
   d c d e f4.~f4 e8 d4. r
   % 17
   e4. f g g4 a8 c4. b a r |
   b c d d, f4.~ f4 e8 d4. r |
   % 25
   f4. g a g g f g r |
   a4. g8 f e f4. g4 a8 g4. f8 e d c4. r |
   % 33
   e4. f g f8 e d d4. c d r |
   a'4 g8 f4 e8 g4. r f4 e8 f4 d8 e4. r |
   % 41
   f4. e4 d8 d4. e d c e r |
   a4 g8 f4 e8 g4. r |
   f4 e8 f4 d8 e4. r |
   % 49
   g4 f8 d4. d e d c d r
  }
  
  \repeat volta 2 {
    a4. b4 a8 | g4. a4 b8 | c4 a8 b4. a r |
    b c d c8 b a g4.~g4 f8 e4. r |
    f e4 d8 d4 e8 g4 f8 e4 d8 e4 d8 c4. r |
    bf' a g4 f8 e4 d8 d4.~d4 c8 d4. r |
    
    a' c d d4 e8 c4 b8 c4 d8 d4. r |
    c b8 a g | f4. g bf4 a8 bf4 g8 a4. r |
    bf c4 d8 c4. bf8 a g f4. g4 f8 f4 e8 c4 r8 |
    d4. c f g a4 g8 f4. e r |
    f4 g8 f e d c4. f e4 d8 c4. d r |
    f4 g8 a4. f4 g8 a4 r8 | bf4 g8 a4 bf8 |
    c4 bf8 a4 g8 f4 e8 d4 r8 |
    f4 g8 a4. f4 g8 a4 r8 |
    bf4 g8 a4 bf8 | c4 bf8 a4 g8 | f4 e8 d4 r8 |
    e4 g8 f4 r8 | e4 d8 c4. | c r | d r
  }

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
        
                  \new Lyrics \lyricsto "PartPOneVoiceOne" { \wordsOne \wordsThree } 
                  \new Lyrics \lyricsto "PartPOneVoiceOne" { \wordsTwo \wordsFour } 


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

