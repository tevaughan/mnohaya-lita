
\version "2.18.2"

\header {
  title = "Mnohaya Lita"
  composer = "Arranged by Megan Vaughan"
}

\paper {
  top-system-spacing #'basic-distance = #10
  score-system-spacing #'basic-distance = #20
  system-system-spacing #'basic-distance = #20
  last-bottom-spacing #'basic-distance = #10
}

global = {
  \key f \major
  \time 2/4
}

sopMusic = \relative c' {
  f4 c8 c d4 c8 r8
  f4 e8 g f4 c8 r8
  a'4 a8 bes c4. a8
  bes8 r16 a16 bes8 a g4. r8
  bes4 bes8 c d4. d8
  c8( bes) a bes c4 c8 r8
  f,4. c8 a'4. r8
  g8 f g a f2
}

altoMusic = \relative c' {
  f4 c8 c d4 c8 r8
  f4 c8 c c4 c8 r8
  f4 f8 g a4. f8
  g8 r16 f16 g8 f e4. r8
  f4 f8 a bes4. bes8
  a8( g) f g a4 f8 r8
  c4. c8 c4. r8
  e8 c c c a2
}

altoWords = \lyricmode {
  Mno -- ha -- ya  li -- ta.
  Mno -- ha -- ya  li -- ta.
  Mno -- ha -- ya  li -- ta.
  Mno -- ha -- ya  li -- ta.
  Mno -- ha -- ya  li -- ta.
  Mno -- ha -- ya  li -- ta.
  Mno -- ha -- ya,
  mno -- ha -- ya  li -- ta.
}

baritoneMusic = \relative c {
  f4 a8 a bes4 a8 r8
  f4 g8 bes a4 f8 r8
  f4 f8 f f4. f8
  c8 r16 c16 c8 c c4. r8
  d4 d8 f d4. e8
  f8( g) f g f4 a8 r8
  a4. a8 f4. r8
  e8 c c c f2
}

\score {
  \new ChoirStaff <<
    \new Staff = "women" <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "altos"
    \new Staff = "men" <<
      \clef bass
      \new Voice = "baritones" {
        \voiceOne
        << \global \baritoneMusic >>
      }
    >>
    \context Lyrics = "altos" \lyricsto "altos" \altoWords
  >>
  \midi { }
}

