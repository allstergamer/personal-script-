mkdir "%userprofile%\Documents\Taskbar-Pinned-Apps-Backup\TaskBar"

copy /y "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar" "%userprofile%\Documents\Taskbar-Pinned-Apps-Backup\TaskBar"

REG EXPORT HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband "%userprofile%\Documents\Taskbar-Pinned-Apps-Backup\Taskbar-Pinned-Apps-Backup.reg" /y