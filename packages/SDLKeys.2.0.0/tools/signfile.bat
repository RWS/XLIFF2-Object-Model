@cd /d %~dp0
@signtool.exe sign /f SDLPLCCurrent.pfx /p B3lg1um /v /d "%~n1" /t http://timestamp.digicert.com "%~1"