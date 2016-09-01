# OmxPlaylist
A simple bash script that allows you to play playlists in the command line using omxplayer.

## Installation
Installation with omxplaylist is very simple due to the makefile.
- To install the dependencies for omxplaylist, use `make` or `make build`.
- To install the actual program, use `make install`.  Since the program is only a bash script.  All the Makefile does is copy the configuration and the program to their respective directories.
- To remove the program from the system, use `make clean`.  This will remove both the configuration files and the actual program.

All this can be done manually.  But it's much simpler to just use the Makefile.

## Usage
To use omxplayer, all you have to do is use `omxplaylist` followed by the directory containing the files to be played in the playlist.
#### Example
`omxplaylist ~/Music/Undertale\ Soundtrack`

It's that easy.

###### Supported Formats:
Basic codecs such as mov, mp4, m4a, mp3, and wav are supported.  Including any other codecs supported by omxplayer.

## Troubleshooting
I'm leaving this section here to highlight some of the main problems seen in the issues section of the repository.
