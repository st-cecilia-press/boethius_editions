date = #(strftime "%m-%d-%Y" (localtime (current-time)))

\paper {
  #(set-paper-size "letter")
  oddFooterMarkup = \markup {
  \column{
    \fill-line { \line {
      \italic \fromproperty #'header:title
      " - Page "
      \fromproperty #'page:page-number-string
      " of 2"
    } }
	\fill-line { \tiny { \line{ Edition Date: \date } } } }
  }
  evenFooterMarkup = \oddFooterMarkup
}
\include "english.ly"
#(set-global-staff-size 15)

\header{
  title = "Sister, Awake!"
  composer = "Thomas Bateson"
  tagline = ""
}

global= {
  \autoBeamOff
  \time 4/4
  \key f \major
}

cantusMusic =   \relative c' {  
	\set Staff.instrumentName = "cantus"
% Sister, awake..
r1 | r4 c' a bf | c c f d | e c c b| 
c2 d4 g | e f d c~( | c8[ bf] g4) a c | d e f2| e2 r4 f4~ |
f e f d | c g a8[( bf c a)] | d4 g2 g4 | g1 | r1
% Out of her bed of roses

% 
}
altusMusic =   \relative c {  
	\set Staff.instrumentName = "altus"
c'2 a4 bf| c c f d | e e d4. d8 | c4 c d f| 
e e d2 | c4 c bf a | g c c a | r2 r4 f | g a bf f | 
g4. g8 a2 | r2 r4 f'4~( | f e) d2| e g,4 a8 bf | c4 a g g
% Out of her bed

}
quintusMusic =   \relative c' {  
	\set Staff.instrumentName = "quintus"
r1 | r1 | r1| r4 c f d |
e c g'2 | g4 a f f | f( e) f f | f e d2 | c2 r4 c'4 |
bf bf a2 | g4 c2 a4 | b c2 b4 | c2 e,4 f8 g | a4 f e e
}
tenorMusic =   \relative c' {  
	\set Staff.instrumentName = "tenor"
r1 | r1 | r1 | r1 |
r2 r4 g | c a bf f | c'2 f,2 | r1 | r4 c'4 bf a |
g2 f4 f'4~ | f e f2 | g2 g, | c1 | r2 c4 d8 e 
}
bassusMusic =   \relative c' {  
	\set Staff.instrumentName = "bassus"
r1 | r1 | r1| r1| 
r1| r1| r1| r1| r1| 
r1 | r1| r1| r1| r1
}

%wordsA = \lyricmode {
%  \set stanza = "1."
%Blah Blah Blah
%}
%wordsB = \lyricmode {
%  \set stanza = "2."
%Blah Blah Blah
%}
%wordsC = \lyricmode {
%  \set stanza = "3."
%Blah Blah Blah
%}
%
%\score {
%    <<
%      \context ChoirStaff <<
%	\context Staff = treble <<
%	  \clef treble
%	  \context Voice = cantusMusic { \voiceOne << \global \cantusMusic >> }
%	  \context Voice = altusMusic { \voiceTwo << \global \altusMusic >> }
%	>>
%	\context Lyrics = lyricsA { s1 }
%	\context Lyrics = lyricsB { s1 }
%	\context Lyrics = lyricsC { s1 }
%
%	\context Staff = bass <<
%	  \clef bass
%	  \context Voice = tenorMusic { \voiceOne << \global \tenorMusic >> }
%	  \context Voice = bassusMusic { \voiceTwo << \global \bassusMusic >> }
%	>>
%
%	\lyricsto "cantusMusic" \context Lyrics = lyricsA \wordsA
%	\lyricsto "cantusMusic" \context Lyrics = lyricsB \wordsB 
%	\lyricsto "cantusMusic" \context Lyrics = lyricsC \wordsC 
%      >>
%
%
%    >>
%
%  \layout {
%    indent = 0\mm
%    betweensystemspace = 5\mm
%  }
%
%  \midi {
%    \tempo 4 = 120
%  }
%
%}

cantusWordsA = \lyricmode {
Sis -- ter, a -- wake, close not your eyes, The day her light, the day her
light dis -- clo -- ses, And the bright morn -- ing doth a -- rise, and the
bright morn -- ing doth a -- rise,
}

altusWordsA = \lyricmode {
Sis -- ter, a -- wake, close not your eyes, close not your eyes, The day her
light dis -- clo -- ses, the day her light dis -- clo -- ses, And the bright
morn -- ing doth a -- rise, doth a -- rise, Out of her bed of ro -- ses,
}
quintusWordsA = \lyricmode {
The day her light dis -- clo -- ses, her light dis -- close -- ses, And the
bright morn -- ing, and the bright morn -- ing doth a -- rise, doth a -- rise,
Out of her bed of ro -- ses,
}

tenorWordsA = \lyricmode {
The day her light dis -- clo -- ses, And the
bright morn -- ing doth a -- rise, doth a -- rise, Out of her
}
bassusWordsA = \lyricmode {
}


\score{

	\new ChoirStaff 
	<<
		\new Voice = "cantusMusic" { \global \clef treble \cantusMusic }
		\new Lyrics \lyricsto "cantusMusic" \cantusWordsA 

		\new Voice = "altusMusic" { \global \clef treble \altusMusic }
		\new Lyrics \lyricsto "altusMusic" \altusWordsA 

		\new Voice = "quintusMusic" { \global \clef treble \quintusMusic }
		\new Lyrics \lyricsto "quintusMusic" \quintusWordsA 

		\new Voice = "tenorMusic" { \global \clef "G_8" \tenorMusic }
		\new Lyrics \lyricsto "tenorMusic" \tenorWordsA 

		\new Voice = "bassusMusic" { \global \clef bass \bassusMusic }
		\new Lyrics \lyricsto "bassusMusic" \bassusWordsA 
	>>



\midi{
     \context {
       \Score
       tempoWholesPerMinute = #(ly:make-moment 100 4)
       }
}

\layout {}

}

\version "2.10.0"  % necessary for upgrading to future LilyPond versions.
