date = #(strftime "%m-%d-%Y" (localtime (current-time)))

\paper {
  #(set-paper-size "letter")
  oddFooterMarkup = \markup {
  \column{
    \fill-line { \line {
      \italic \fromproperty #'header:title
      " - Page "
      \fromproperty #'page:page-number-string
      " of 1"
    } }
	\fill-line { \tiny { \line{ Edition Date: \date } } } }
  }
  evenFooterMarkup = \oddFooterMarkup
}
\include "english.ly"
%#(set-global-staff-size 15)

\header{
  title = "Sub umbra illius"
  composer = "Jacobus Clemens non Papa"
  tagline = ""
}

global= {
%  \autoBeamOff

\hide Score.BarLine
\override NoteHead.style = #'baroque
  \time 2/1
 \key f \major
}

cantusMusic = \relative c' {  
	\set Staff.instrumentName = "superius"
  \clef "C"

  g1 a2 c1 c2 bf a1 g4 f g2 
  c d f1 f2 | e d1 c4 bf c1
  g1 a2 c1 c2 bf a1 g4 f g1 f1
  r\longa | r2 c'1 c2 c c bf a d1 
  % colored
  c2. 
  bf4 c2 
  d1 c4 bf a1. g4 f

  g2 c2. d4 e c d2 e d4 bf 
  f'1 e2 d c2. bf4 a g a1 r\longa |
  f'1 f2 f e1 d2 d f f1 e2 d d c1 r\breve r2
  c2 c c bf1 a2 a c c c bf a g4 f g2 g a\breve g2 c1 bf2

  c2 c ef1 d1 r2 c1 bf2 c c e1 d r1 c1.
  bf2 a a g g a2. g8 f g1 f2 
  f'1 e2 d d1 c bf2 c1 r\breve 
  g1 a2 c1 bf2 a g bf c a1 g r1 r2
  c2 d f1 e2 d c e f 

  d1 c\breve r\breve c2 c2. c4 c2 d e f1 r2
  f2 f e d1 c1. bf4 a bf1 a r\breve
  f2 f2. f4 f2 g a bf bf bf a g bf2. a4 g f g1 
  f2 c' f1. e2 d c d c bf a 

  d1 c2. d4 e2 f1 e2 f1 c f1. e2 d c bf a g1 a\breve
  c1 f1. e2 d c bf bf a\longa

}
tenorMusic = \relative c {  
	\set Staff.instrumentName = "media vox"
  \clef "tenor"

  r\breve r1 f1 a2 c1 c2 bf a1 g4 f g1 f2 bf1 a2 bf c2. bf4 a2 g1 r2
  c1 c2 c c bf a d1 c2. bf4 c2 d1 c4 bf a2. f4 g2 a1 g2 f f1 f2 f f e d

  g1. f1 e4 d e2 c4 d e f g a bf2 c a2 g4 f g1 f\breve
  r2 c'2 c c bf1 a2 a c c1 bf2 a2. f4 g2 a1 g2 a c c c bf a1 a2 c2 c1 bf2 a1. g2 f g1 f2 g a1 g f e2

  f1 r2 f1 e2 f g a1 g1 r2 g1 e2 f1 a g2 c1 bf2 a a1 g2 a f1 e2 d1 f c2
  c'1 bf2 a a1 g2 f4 e d c d1 r2 
  c2 d f1 e2 d c 
  % colored in the original
  e2. 
  f4 d1 c4 d e f g2 e 
  % colored
  f2. 
  e4 c2 g'

  a c bf a1 f2 g2. a4 bf2 a g4 e a1 g2 a1. 
  g4 f g2 a bf c c4 bf a g a1 
  % something missing here?
  r1


f2 f2. f4 f2 g a bf bf bf a g a1
g2 a c1 c2 bf a d c1 bf2 c c, g' d 

f2. e4 c2 g'1 f e2 f a1 g4 f g1 a r 
f bf1. a2 g f g g a1 r2 r1 g2 bf1.
a2 g f f e f f c'1. bf2 a g f g2. f4 f1 e2 f\longa

}
bassusMusic = \relative c {  
	\set Staff.instrumentName = "bassus"
  \clef "bass"
   
  r\breve c1 d2 f1 f2 e f d\breve
  c2 bf1 a4 g f2 f'1 e2 f1
  c1 d2 f1 f2 e1 d2 f1 f2 f f e d 
  g1 f2. e8 d e2 f1 e2 d2. c4 bf1
  f2. g4 a2 bf 

  g4 a bf c d1 c2 c1 c2 c c bf2 a d1 c f,
  r2 f'2 f f e1 d2 d f f1 e2 d2. e4 f2 d c bf4 a bf1 a\breve
  r2 f' f f e1 d2 d f f1 e2 d2. c4 d1 c2 f,2 a bf c d c1

  f,\breve c'1 r\breve c1. bf2 c c d1 c\breve
  r1 f1. e2 d d d c bf2. a4 f2 f'1 e2 d d d c 
  % cop ligature
  bf1 a 
  r2 g2 a c1 bf2 a g bf c a1 g c r2
  c d f1 e2 d c e f d1 c

  r2 c1 a2 bf1 a c2 c2. c4 c2 d e f1 r2 f2 f e d2. c4 d1 c r 
  c2 c2. c4 c2 d e f f f e d f2. e4 d c d1 c2. bf4 g a bf c d e f1 e2 
  % cop ligature
  d1 c f,\breve

  c'1 f1. e2 d2. c4 bf2 bf f1 c'\breve f1. e2 d2. c4 bf a g1 
  a2 
  % cop ligature
  bf1 c 
  f,1 r2 f2 f'1. e2 d c bf a g1 f\longa 
  
   \undo \hide Score.BarLine
   \bar "|."

}

cantusWords = \lyricmode {
}


tenorWords = \lyricmode {
}

bassusWords = \lyricmode {
  
}



\score{

	\new StaffGroup 
	<<
		\new Voice = "cantusMusic" { \global \clef treble \cantusMusic }
		\new Lyrics \lyricsto "cantusMusic" \cantusWords 


		\new Voice = "tenorMusic" { \global \clef "treble" \tenorMusic }
		\new Lyrics \lyricsto "tenorMusic" \tenorWords 

		\new Voice = "bassusMusic" { \global \clef "G_8" \bassusMusic }
		\new Lyrics \lyricsto "bassusMusic" \bassusWords 
	>>



\midi{
     \context {
       \Score
       tempoWholesPerMinute = #(ly:make-moment 100 4)
       }
}

\layout {}

}

\version "2.14.0"  % necessary for upgrading to future LilyPond versions.
