#define NAME "Halo Custom Edition"
#define VERSION "1.0.10.621"
#define AUTHOR "Microsoft, Gearbox Software, Bungie, ShadowMods"
#define WEBSITE "https://mercury.shadowmods.net/"

[Setup]
AppId={{cd65c226-5b4a-474e-bc72-71a218732dbf}
AppName={#NAME}
AppVersion={#VERSION}
AppVerName={#NAME} {#VERSION}
AppPublisher={#AUTHOR}
AppPublisherURL={#WEBSITE}
AppSupportURL={#WEBSITE}
AppUpdatesURL={#WEBSITE}
;DefaultDirName={autopf}\Halo Custom Edition
DefaultDirName=C:\Halo Custom Edition
DefaultGroupName={#NAME}
DisableProgramGroupPage=yes
LicenseFile=EULA.md
;PrivilegesRequired=lowest
OutputDir=dist
OutputBaseFilename=halo_custom_edition-{#VERSION}
Compression=lzma/max
SolidCompression=yes
WizardStyle=classic
WizardImageFile="img\WizardImageFile.bmp"
WizardSmallImageFile="img\WizardSmallImageFile.bmp"
SetupIconFile="ico\halo.ico"
UninstallDisplayIcon="ico\alternative.ico"
ChangesEnvironment=true
CloseApplications=no

[Languages] 
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
Source: "files\*"; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist
Source: "files\maps\*"; DestDir: "{app}\maps"; Flags: ignoreversion onlyifdoesntexist
Source: "files\shaders\*"; DestDir: "{app}\shaders"; Flags: ignoreversion onlyifdoesntexist
Source: "files\content\*"; DestDir: "{app}\content"; Flags: ignoreversion onlyifdoesntexist
Source: "files\controls\*"; DestDir: "{app}\controls"; Flags: ignoreversion onlyifdoesntexist
Source: "files\redist\msxmlenu.msi"; DestDir: "{app}\redist"; Flags: ignoreversion onlyifdoesntexist

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "Version"; ValueData: "1"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "VersionType"; ValueData: "TrialVersion"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "EXE Path"; ValueData: "{app}"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "Launched"; ValueData: "0"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "InstalledGroup"; ValueData: "1"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "PID"; ValueData: ""; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: binary; ValueName: "DigitalProductID"; ValueData: ""; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: dword; ValueName: "DistID"; ValueData: 860; Flags: uninsdeletevalue

[Icons]
Name: "{group}\{cm:UninstallProgram,{#NAME}}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Halo Custom Edition"; Filename: "{app}\haloce.exe"; WorkingDir: "{app}"; IconFilename: "{app}\haloce.exe"
