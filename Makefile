default: build

build:
	@echo "\n"
	@echo "\033[0;34m==> \033[0mINFO: Installing dependencies..."
	command -v omxplayer >/dev/null 2>&1 || { sudo apt-get install omxplayer; } || (echo "\033[0;34m==> \033[0;31m ERROR: \033[0mCould not install omxplayer!"; )
	command -v mp3info >/dev/null 2>&1 || { sudo apt-get install mp3info; } || (echo "\033[0;34m==> \033[0;31mERROR: \033[0mCould not install mp3info!";)
	@echo "\033[0;34m==> \033[0mINFO: Installed required dependencies.  Use make install to finish installation."
	@echo "\n"

install:
	@echo "\n"
	@echo "\033[0;34m==> \033[0mINFO: Copying omxplaylist to /usr/local/bin"
	sudo cp src/omxplaylist /usr/local/bin/ || (echo "\033[0;34m==> \033[0;31mERROR: \033[0mThere was an error copying the program to /usr/bin/local/"; exit 1; )
	@echo "\033[0;34m==> \033[0mINFO: Creating omxplaylist.cfg"
	sudo mkdir ~/.config/omxplaylist || (echo "\033[0;34m==> \033[0;31mERROR: \033[0mCould not create directory in ~/.config/; exit 1; ")
	sudo cp src/omxplaylist.cfg ~/.config/ || (echo "\033[0;34m==> \033[0;31mERROR: \033[0mThere was an error copying the configuration to ~/.config/omxplaylist/"; exit 1; )
	@echo "\033[0;34m==> \033[0;32mSUCCESS!: \033[0mInstalled omxplaylist."
	@echo "\n"

clean:
	@echo "\n"
	@echo "\033[0;34==> \033[0mINFO: Cleaning omxplaylist from system."
	sudo rm /usr/local/bin/omxplaylist || (echo "\033[0;34m==> \033[0;31mERROR: \033[0momxplayer could not be found and could not be removed."; )
	sudo rm -rf ~/.config/omxplaylist || (echo "\033[0;34m==> \033[0;31mERROR: \033[0momxplayer directory could not be found and could not be removed."; exit 1; )
	@echo "\033[0;34m==> \033[0;32mSUCCESS!: \033[0mRemoved omxplaylist from the system."
	@echo "\n"

