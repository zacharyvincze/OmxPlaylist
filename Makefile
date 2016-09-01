default: build

build:
	@echo "\n\033[0;34m==> \033[0mINFO: Installing dependencies..."
	@command -v omxplayer >/dev/null 2>&1 || { sudo apt-get install omxplayer; } || (echo "\033[0;34m==> \033[0;31m ERROR: \033[0mCould not install omxplayer!";)
	@command -v mp3info >/dev/null 2>&1 || { sudo apt-get install mp3info; } || (echo "\033[0;34m==> \033[0;31mERROR: \033[0mCould not install mp3info!";)

install:
	@echo "\033[0;34m==> \033[0mINFO: Copying omxplaylist to /usr/local/bin"
	@sudo cp src/omxplaylist /usr/local/bin/ || (echo "\033[0;34m==> \033[0;31mERROR: \033[0mThere was an error copying the program to /usr/bin/local/"; exit 1;)
	@echo "\033[0;34m==> INFO: Creating omxplaylist.cfg"
	@sudo cp src/omxplaylist.cfg ~/.config/ || (echo "\033[0;34m==> \033[0;31mERROR: \033[0mThere was an error copying the configuration to ~/.config/"; exit 1; )
	@echo "\033[0;34m==> \033[0;32mSUCCESS!: \033[0mInstalled omxplaylist."

clean:

