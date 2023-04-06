
#(set-global-staff-size 16)

\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
 
}

\header{
  title = "Untitled 1"
  subtitle = ""
  composer = "Jan Verstreken"
  tagline = ""
}

global = { \key g \minor \time 4/4 }

upper = \relative c' {
  \tempo 4 = 60
  \clef treble
  \key g \minor
  \time 4/4

\repeat volta 2 {
  r4.^\mp a8 bes a g a | aes4 aes aes g 
  \break 
  bes4. a8 bes c d bes | aes4 aes g g 
  \break
  r4 \acciaccatura c16 d8 es r4 \acciaccatura c16 d8 es |
  r4 \acciaccatura es16 f8 g r4 \acciaccatura es16 f4
  \break
  r8.^\p es16 \acciaccatura c16 d8 es r4 \acciaccatura c16 d8 es |
  r4 \acciaccatura es16 f8 g r2 
  \break
  r4 bes8. a16 bes4 bes8. a16 | g4 g8 f g2
  \break
  r4 g4 g ges

}
}

lower = \relative c {
  \clef bass
  \key g \minor
  \time 4/4

\repeat volta 2 {
  g8 d' g2. | {<<{f,8 c' f c f c f c}\\{}>>} 
  \break
  {<<{g8 d' g2.}\\{}>>} | {<<{f,8 c' f c f c f c}\\{}>>}
  \break
  c8 g' c4 c,8 g' c4 | es,8 bes' es4 es,8 bes' es4
  \break
  c,8 g' c4 c,8 g' c4 | es,8 bes' es4 es,2
  \break
  g8 d' g d f,8 c' f c | es,8 bes' es4 es,8 bes' es4
  \break
  es,8 bes' es bes d, a' d a 
}



}

\score {
  \new PianoStaff <<
    \chords { g1:m f:m g:m f:m c:m es c:m es g2:m f es1 es2 d }
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
