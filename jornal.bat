:: Converter o Jornal (colorspace --> -level 0%,100%,1.7)

@echo off
set convert_="C:\Program Files\ImageMagick-6.8.7-Q16\convert.exe"
cls

:: for %%i in (*.pdf) do ( "C:\Program Files\ImageMagick-6.8.7-Q16\convert.exe" -monitor -crop 0x0+150+150 -gravity Center -density 300 -quality 90 -attenuate 40 -antialias -colorspace RGB -brightness-contrast 20x20 -crop -75-75 -bordercolor white -border 130x130 -resize 1060x1500 %%i %%i.jpg )

for %%i in (*.pdf) do ( %convert_% -monitor -colorspace RGB -brightness-contrast 25x13 %%i %%i.jpg )

:: for %%i in (*.jpg) do ( "C:\Program Files\ImageMagick-6.8.7-Q16\convert.exe" -monitor -resize 1536x2067 %%i CONVERTIDO-%%i.jpg )

:: "C:\Program Files\ImageMagick-6.8.7-Q16\convert.exe" -monitor *.jpg jornal-maua-e-regiao.pdf

:: Na maioria das vezes algumas páginas saem cortadas utilizando a configuração
:: acima; a linha abaixo resolve este problema, diminuindo a área de corte.

:: for %%i in (*.pdf); do ( "C:\Program Files\ImageMagick-6.8.7-Q16\convert.exe" -crop 0x0+10+10 -gravity Center -density 300 -quality 90 -attenuate 40 -antialias -colorspace RGB -level 0%,100%,1.7 -crop -0-0 -bordercolor white -border 130x130 -resize 1060x1500 %%i %%i.jpg )