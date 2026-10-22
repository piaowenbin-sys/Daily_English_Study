[Setup]
AppId={{A7C8C3F2-2D7E-4E63-9C2A-DAILYTOEIC2026}
AppName=Daily Study App
AppVersion=1.0.0
DefaultDirName={localappdata}\DailyStudyApp
DefaultGroupName=Daily Study App
OutputDir=C:\Users\USER.K1109684\Documents\ChatGPT\English_Workout\outputs
OutputBaseFilename=Daily_Study_App_Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest
UninstallDisplayIcon={app}\ToeicStudyApp.exe

[Files]
Source: "C:\Users\USER.K1109684\Documents\ChatGPT\English_Workout\outputs\Daily_Study_App_Package\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autodesktop}\Daily Study App"; Filename: "{app}\ToeicStudyApp.exe"; WorkingDir: "{app}"
Name: "{group}\Daily Study App"; Filename: "{app}\ToeicStudyApp.exe"; WorkingDir: "{app}"

[Run]
Filename: "{app}\ToeicStudyApp.exe"; Description: "Daily Study App 실행"; Flags: nowait postinstall skipifsilent
