# ImageMagick Commands

## Adding Coloured Background
The script below will output an image with a frame 20% larger than its width and height.
<br>
`magick $img -background white -gravity center -extent 120%x120% output-$img.png`
<br>
Alternatively, to add an _even_ "frame" (background) use the code below. In this example, we're adding a frame of 60px evenly around the image:
<br>
`magick $img -background $color -gravity center -extent "%[fx:w+60]x%[fx:h+60]" output-$img.png`

## Rounding Corners – Geometrically
`magick $img \
\( -size "$(magick identify -format %wx%h" "$img")" xc:none -fill white \
-draw  "roundrectangle 0,0 %[fx:w]x%[fx:h] $radius, $radius" \) \
-alpha set -compose DstIn -composite "$output"`

## Blurring an Image
Please note, if you want a **blurred** rounded image, you should **blur first** and round second.

`magick $img -gravity center -blur 0x[blur amount] output.png`
