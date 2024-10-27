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
      \fill-line { \tiny { \line{ Edition Date: \date } } } 
    }
  }
  ragged-bottom=##f
  ragged-last-bottom=##f
  evenFooterMarkup = \oddFooterMarkup
}
#(set-global-staff-size 18.5)

global= {
  \key g \minor
  \time 4/4
%  \autoBeamOff
}

cantusMusic = {   
  r4  d''4 d''4 c''4 |  % 1
  d''2 d''4 f''4 |  % 2
  ees''4 \melisma  d''2 \melismaEnd  c''8 \melisma  bes'8 \melismaEnd  |  % 3
  a'4 \melisma  c''4. bes'8   g'8 a'8   |  % 4
  bes'8   c''8 d''8 ees''8   f''4 f'8   g'8   |  % 5
  a'8   bes'8   c''4. \melismaEnd  bes'8 bes'4 ~  |  % 6
  bes'4 a'4 bes'2 |  % 7
  r4  bes'4 bes'4 bes'4 |  % 8
  c''4 c''4 d''4. \melisma  ees''8 \melismaEnd  |  % 9
  f''4 g''4. \melisma  f''8   ees''8 d''8   |  % 10
  c''8   bes'8 a'8 g'8   f'4 f''4 ~  |  % 11
  f''4 \melismaEnd  e''4 f''2 |  % 12
  r4  d''4 d''4 d''4 |  % 13
  f''4. \melisma  ees''8   d''8 c''8 \melismaEnd    ees''4 ~  |  % 14
  ees''8 d''8 c''2 b'4 |  % 15
  c''2 r4  d''4 |  % 16
  d''4 c''4 d''2 |  % 17
  r4  d''4 d''4 c''4 |  % 18
  d''2. f''4 |  % 19
  ees''4 d''2 c''8 \melisma    bes'8 \melismaEnd    |  % 20
  a'4 \melisma  c''4. bes'8   g'8 a'8   |  % 21
  bes'8   c''8 d''8 ees''8   f''4 f'8   g'8   |  % 22
  a'8   bes'8   c''4. bes'8 bes'4 ~  |  % 23
  bes'4 \melismaEnd  a'4 bes'2\fermata  \bar "|."
}

altusMusic = {
  r4  f'4 f'4 ees'4 |  % 1
  f'2. f'4 |  % 2
  g'2 f'2 ~  |  % 3
  f'4 ees'8 \melisma    d'8 \melismaEnd    c'4 \melisma  ees'4 ~  |  % 4
  ees'8   d'8 bes8 c'8   d'8   ees'8   f'4 ~  |  % 5
  f'8   ees'8 c'8 d'8   ees'8   d'8 \melismaEnd    c'8   bes8   |  % 6
  c'2 bes4 f'4 |  % 7
  f'4 f'4 g'4 g'4 |  % 8
  a'2 bes'2 ~  \melisma  |  % 9
  bes'4 a'8   g'8 \melismaEnd    c''4. \melisma  bes'8 |  % 10
  a'8   g'8   f'4 a'4 bes'4 \melismaEnd  |  % 11
  g'2 f'2 ~  |  % 12
  f'2 r4  f'4 |  % 13
  f'4 f'4 g'4. f'8 |  % 14
  ees'4 f'4 d'2 |  % 15
  c'2 r4  f'4 |  % 16
  f'4 ees'4 f'2 |  % 17
  r4  f'4 f'4 ees'4 |  % 18
  f'2. f'4 |  % 19
  g'2 f'2 ~  |  % 20
  f'4 ees'8 \melisma    d'8 \melismaEnd    c'4 \melisma  ees'4 ~  |  % 21
  ees'8   d'8 bes8 c'8   d'8   ees'8   f'4 ~  |  % 22
  f'8   ees'8 c'8 d'8   ees'8   d'8 c'8 bes8 \melismaEnd    |  % 23
  c'2 bes2\fermata  \bar "|."

}

tenorMusic = \transpose c' c {
  r4  bes'4 bes'4 c''4 |  % 1
  bes'4. \melisma  a'8   bes'8 c''8 \melismaEnd    d''4 |  % 2
  c''4 bes'2 a'8 \melisma    g'8 \melismaEnd    |  % 3
  f'4 \melisma  aes'4. g'8   ees'8 f'8   |  % 4
  g'8   a'8   bes'2 a'8   g'8 \melismaEnd    |  % 5
  f'4 a'4 g'2 |  % 6
  f'2 r4  bes'4 |  % 7
  bes'4 bes'4 ees''4. d''8 |  % 8
  c''8 \melisma    bes'8 \melismaEnd    c''4 bes'4. \melisma  c''8 |  % 9
  d''4 ees''2 c''4 |  % 10
  f''4. ees''8   d''8 c''8   bes'4 \melismaEnd  |  % 11
  c''2 f'2 |  % 12
  r4  bes'4. \melisma  a'8   bes'8 c''8 \melismaEnd    |  % 13
  d''4. c''8 bes'4 c''4 |  % 14
  c''4 f'4 g'2 |  % 15
  c''2 r4  bes'4 |  % 16
  bes'4 c''4 bes'2 |  % 17
  r4  bes'4 bes'4 c''4 |  % 18
  bes'4. \melisma  a'8   bes'8 c''8 \melismaEnd    d''4 |  % 19
  c''4 bes'2 a'8 \melisma    g'8 \melismaEnd    |  % 20
  f'4 \melisma  aes'4. g'8   ees'8 f'8   |  % 21
  g'8   a'8   bes'2 a'8   g'8   |  % 22
  f'4 a'4 g'2 \melismaEnd  |  % 23
  f'2 bes'2\fermata  \bar "|."
}

cantusWords = \lyricmode {
  Hör an mein Klag,
  denn ich hier vor Trau -- ern schier __ ver -- zag,
  mein Herz mir brennt, 
  o Lieb mein Schmer -- zen wend,
  ich trag groß Pein, __
  könnt ich bei dir sein,
  hör an mein Klag,
  er -- lö -- se mich,
  all -- zeit will ich lie -- ben dich!
}
altusWords = \lyricmode {
  Hör an mein Klag,
  denn ich hier __ vor Trau -- ern schier ver -- zag,
  mein Herz mir brennt, 
  o Lieb mein __ Schmer -- zen wend,
  ich trag groß Pein,
  könnt ich bei dir sein,
  hör an mein Klag,
  er -- lö -- se mich,
  all -- zeit will ich lie -- ben dich!
}
tenorWords = \lyricmode {
  Hör an mein Klag, __
  denn ich hier vor Trau -- ern schier ver -- zag,
  mein Herz mir brennt, 
  o Lieb mein Schmer -- zen wend,
  ich __ trag groß Pein,
  könnt ich bei dir sein,
  hör an mein Klag,
  er -- lö -- se mich, __
  all -- zeit will ich __ lie -- ben dich!
}


\header{
  title = "Hör an mein Klag"
  composer = "Heinrich Isaac"
  tagline = ""
}


\score {
  <<
    \context ChoirStaff <<
      \context Voice = cantus { << \global \cantusMusic >> }
      \lyricsto "cantus" \context Lyrics = cantusWords \cantusWords
      \context Voice = altus { << \global \altusMusic >> }
      \lyricsto "altus" \context Lyrics = altusWords \altusWords
      \context Voice = tenor { \clef "G_8" << \global \tenorMusic >> }
      \lyricsto "tenor" \context Lyrics = tenorWords \tenorWords

    >>


  >>

  \layout {
    indent = 0\mm
%    between-system-space = 5\mm
  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 165 4)
    }
  }


}

\version "2.10.10"  % necessary for upgrading to future LilyPond versions.

