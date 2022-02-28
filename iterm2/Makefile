include ../Makefile.include

install-Darwin:
	defaults import com.googlecode.iterm2 com.googlecode.iterm2.plist
	defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string '$(RELHOMEPATH)'
	defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -int 1
	defaults write com.googlecode.iterm2.plist NoSyncNeverRemindPrefsChangesLostForFile_selection -int 2

