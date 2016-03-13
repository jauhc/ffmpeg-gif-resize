@echo off
set /p our_input="Enter filename WITH file extension: "
set /p our_output="Enter filename to be saved as (no extension): "
ffmpeg -i "%our_input%" -vf palettegen palette.png
ffmpeg -i "%our_input%" -i palette.png -lavfi "scale=-1:-1,paletteuse" "%our_output%.gif"
