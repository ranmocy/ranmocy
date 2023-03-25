# About
This is my resume, templated by Adrien Friggeri.

## Fonts

```bash
# Linux
git clone https://github.com/ranmocy/fonts.git ~/.fonts
```

## Dev

OSX:

```bash
brew install texlive entr
echo "CV.tex" | entr bash -c 'xelatex -halt-on-error CV.tex && open CV.pdf'
convert -colorspace sRGB -alpha opaque -density 600 -resize 25% CV.pdf CV.png && open CV-0.png
```

Linux:

```bash
sudo apt install texlive-full
sudo apt install fontconfig
fc-cache
sudo mktexlsr
sudo gem install guard-shell
guard
```
