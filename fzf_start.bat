@rem fzf_start.bat - opens a fzf selected file with start /b "file_name" in Microsoft Windows
rem github_url: https://github.com/pl643/windows-scripts/fzf_start.bat
echo off

rem Sample Aautohotkey entry, change to reflect your environment
rem EnvGet, HOME, USERPROFILE
rem HOME              := StrReplace(HOME, "\", "\\") 
rem fzf_start_path       := HOME . "\\OneDrive\\DevEnv\\fzf_open.bat"
rem ralt & f::RunOrActivate(fzf_start_path);

rem An easier option is to create a Shortcut to the script and bind a Shortcut key

rem Defaults to Home folder
set START_DIR=%USERPROFILE%
cd %START_DIR%

rem TODO: fix bug for files with space, gets a dialog box that says it can't find a 'file' when the file is "file with space"

FOR /F "tokens=* USEBACKQ" %%F IN (`fzf.exe`) DO (
    SET FZF_SELECTION=%%F
)
start /b "" "%FZF_SELECTION%"
