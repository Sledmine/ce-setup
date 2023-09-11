#define NAME "Halo Custom Edition"
#define VERSION "1.0.10.0621"
#define AUTHOR "Microsoft, Gearbox Software, Bungie, ShadowMods"
#define WEBSITE "https://mercury.shadowmods.net/"

[Setup]
AppId=cd65c226-5b4a-474e-bc72-71a218732dbf
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
UninstallDisplayIcon="ico\halo.ico"
ChangesEnvironment=true
CloseApplications=no

[Languages] 
Name: "english"; MessagesFile: "compiler:Default.isl"
;Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "Version"; ValueData: "1.10"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "VersionType"; ValueData: "TrialVersion"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "EXE Path"; ValueData: "{app}"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "Launched"; ValueData: "0"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "InstalledGroup"; ValueData: "1"; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: string; ValueName: "PID"; ValueData: ""; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: binary; ValueName: "DigitalProductID"; ValueData: ""; Flags: uninsdeletevalue
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Microsoft Games\Halo CE"; ValueType: dword; ValueName: "DistID"; ValueData: 860; Flags: uninsdeletevalue

[Files]
Source: "files\*"; DestDir: "{app}"; Flags: ignoreversion
Source: "files\maps\*"; DestDir: "{app}\maps"; Flags: ignoreversion
Source: "files\shaders\*"; DestDir: "{app}\shaders"; Flags: ignoreversion
Source: "files\content\*"; DestDir: "{app}\content"; Flags: ignoreversion
Source: "files\controls\*"; DestDir: "{app}\controls"; Flags: ignoreversion
Source: "files\directx\*"; DestDir: "{app}\directx"; Flags: ignoreversion
; Do not install MXSML 4.0 anymore cause Chimera replaces the in game chat, keep it here if needed
Source: "files\redist\msxmlenu.msi"; DestDir: "{app}\redist"; Flags: ignoreversion

;Install DirectX June 2010 Redist
[Run]
Filename: "{app}\directx\DXSETUP.exe"; StatusMsg: "Installing DirectX June 2010 Redist..."; Parameters: "/silent"; Flags: waituntilterminated

[Icons]
Name: "{group}\{cm:UninstallProgram,{#NAME}}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Halo Custom Edition"; Filename: "{app}\haloce.exe"; WorkingDir: "{app}"; IconFilename: "{app}\haloce.exe"

[Code]
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
    if CurUninstallStep = usPostUninstall then
        if MsgBox('Do you want to delete mods and profile files? (This will wipe out ALL game files, recommended)', mbConfirmation, MB_YESNO) = IDYES then
            begin
                DelTree(ExpandConstant('{app}'), True, True, True);
                DelTree(ExpandConstant('{userdocs}\My Games\Halo CE'), True, True, True);
    end;
end;
