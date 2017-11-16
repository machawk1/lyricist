# Lyricist

This is a simple script intended to convert PDFs of sheet music into audio tracks. To do this, it performs OCR over the music to convert it to text, and then uses the build in macOS's text-to-speech to read out the discovered lyrics.

## Setup for macOS
The [homebrew](https://brew.sh/) package manager is required to install dependencies.

``` bash
brew install tesseract
brew install imagemagick
brew install ghostscript
git clone (this repo) lyricist; cd lyricist
```

## Usage

To use, just run
``` bash
./sing.sh <path/to/file.pdf>
```
A `.aiff` audio file will be produced in the current directory.

## "Advanced" Usage

If you have the "Pipe Organ" system voice installed, the output will be more musical. To install it:

1. Go to  > System Preferences > Accessibility
2. Select the System Voice dropdown, then "Customize..."
3. Tick the "Pipe Organ" box
4. Hit OK, wait for system to download the voice

## Sample Output
A sample PDF (sample-sing.pdf) and resulting audio file (sample-sing.aiff) are included as an example of expected output (produced with the "Pipe Organ" voice installed).
