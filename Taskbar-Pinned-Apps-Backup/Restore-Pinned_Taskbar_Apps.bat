DEL /F /S /Q /A "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*"

copy /y "C:\Users\SteineAle\Documents\Taskbar-Pinned-Apps-Backup\TaskBar" "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" 

REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband /F

REG IMPORT "%userprofile%\Documents\Taskbar-Pinned-Apps-Backup\Taskbar-Pinned-Apps-Backup.reg"

REG IMPORT "%userprofile%\Documents\Taskbar-Pinned-Apps-Backup\Taskbar-location-backup.reg"

taskkill /f /im explorer.exe

start explorer.exe
