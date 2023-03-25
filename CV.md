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
brew install texlive
xelatex -halt-on-error CV.tex
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
