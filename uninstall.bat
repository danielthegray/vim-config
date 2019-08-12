@ECHO OFF
ECHO "Removing symlinked config..."
DEL %USERPROFILE%\_vimrc
RMDIR %USERPROFILE%\.vim
