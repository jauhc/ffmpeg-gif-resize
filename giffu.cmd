ffmpeg -i input.gif -vf palettegen palette.png
ffmpeg -i input.gif -i palette.png -lavfi "scale=300:-1,paletteuse" output.gif