flac2mp3.sh - Convert from FLAC to MP3
=============

This Bash shell script converts from any flac file to mp3. It looks for .flac files in the directory provided and drops the new MP3's into the same directory.

It depends on libraries that are available via Homebrew, so you'll need that and possibly the Apple Command Line Tools.

Installation
-----------

* [Install Apple Command Line Tools] -- `xcode-select --install`
* [Install Homebrew](http://brew.sh/) -- `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
	* Make sure to run "brew doctor" if this is the first time you have installed Homebrew.
* [Install flac] -- `brew install flac`
* [Install LAME] -- `brew install lame`


Usage
-----
`$ sh flac2mp3.sh`