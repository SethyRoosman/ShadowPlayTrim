@echo OFF
setlocal EnableDelayedExpansion
SET /A i=1
SET /A mp4Files=0
SET /A otherFiles=0
SET /A allFiles=0

for %%f in (%1\*.*) DO (
	REM more %%f
	REM type %%f
	REM This is where we will trim the video and save file
	echo !i! %%f
	REM if exist %%f echo "pepepee"
	SET fileExtension=%%~xf
	REM echo !fileExtension!
	if !fileExtension! == .mp4 (
		REM echo ".mp4 FILE FOUND"
		SET /A mp4Files=!mp4Files!+1
	)
	if NOT !fileExtension! == .mp4 (
		SET /A otherFiles=!otherFiles!+1
	)
	SET /A allFiles=!allFiles!+1
	SET /A i=!i!+1
)
echo total files in folder : !allFiles!
echo mp4 files found : !mp4Files!
echo other files found : !otherFiles!