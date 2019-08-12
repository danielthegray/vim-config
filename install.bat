@ECHO OFF
IF EXIST %USERPROFILE%\_vimrc (
	ECHO A _vimrc file already exists! Doing nothing...
) ELSE (
	mklink %USERPROFILE%\_vimrc %~DP0%vim\vimrc
)
IF EXIST %USERPROFILE%\.vim (
	ECHO A .vim folder already exists! Doing nothing...
) ELSE (
	mklink /j %USERPROFILE%\.vim %~DP0%vim\vimfiles
	mkdir .\vim\vimfiles\backup
	mkdir .\vim\vimfiles\directory
	mkdir .\vim\vimfiles\undo
)
