!include x64.nsh

OutFile TIB,TIBX-ShellEx-25.8.1.39216.exe

Name "Acronis Shell Extension only"
BrandingText ":: ACRONIS SHELL EXTENSION ::"

CRCCheck on
SetOverwrite ifnewer
ShowInstDetails show

DirText "Based on Acronis Backup 2021 v25.8.1.39216"

Page directory
Page components
Page instfiles

Var InstDir32
Var InstDir64

Section "!Required files" required_id
        WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tibx\OpenWithList" "" ""
        WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tibx\OpenWithProgids" "tibxfile" ""
        WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tib\OpenWithList" "a" "{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\OpenWith.exe"
        WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tib\OpenWithList" "MRUList" "a"
        WriteRegStr HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tib\OpenWithProgids" "tibfile" ""

        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile" "" "Acronis True Image backup"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\CLSID" "" "{C539A15B-3AF9-4c92-B771-50CB78F5C751}"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\DefaultIcon" "" "$INSTDIR\tishell_25_8_39216.dll,-4"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\Shell\open" "" ""
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\Shell\open\command" "" "explorer /idlist,%I,%L"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\Shell\open\ddeexec" "NoActivateHandler" ""
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\Shell\open\ddeexec" "" "[ViewFolder($\"%l$\", %I, %S)]"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\Shell\open\ddeexec\application" "" "Folders"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\Shell\open\ddeexec\ifexec" "" "[]"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\Shell\open\ddeexec\topic" "" "AppProperties"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile\ShellEx\ContextMenuHandlers\{C539A15A-3AF9-4c92-B771-50CB78F5C751}" "" ""
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile" "" "Acronis True Image backup"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\CLSID" "" "{C539A15B-3AF9-4c92-B771-50CB78F5C751}"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\DefaultIcon"  "" "$INSTDIR\tishell_25_8_39216.dll,-4"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\Shell\open" "" ""
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\Shell\open\command" "" "explorer /idlist,%I,%L"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\Shell\open\ddeexec" "" "[ViewFolder($\"%l$\", %I, %S)]"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\Shell\open\ddeexec" "NoActivateHandler" ""
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\Shell\open\ddeexec\application" "" "Folders"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\Shell\open\ddeexec\ifexec" "" "[]"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\Shell\open\ddeexec\topic" "" "AppProperties"
        WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile\ShellEx\ContextMenuHandlers\{C539A15A-3AF9-4c92-B771-50CB78F5C751}" "" ""
        ${If} ${RunningX64}
                DetailPrint "Installer running on 64-bit host"
                ; disable registry redirection (enable access to 64-bit portion of registry)
                SetRegView 64
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell64_25_8_39216.dll"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}" "" ""
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\DefaultIcon" "" "$INSTDIR\tishell_25_8_39216.dll,-4"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories\{00021490-0000-0000-C000-000000000046}" "" ""
                WriteRegDWORD HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\ShellFolder" "Attributes" 0xa0000000
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell64_25_8_39216.dll"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{00F848DC-B1D4-4892-9C25-CAADC86A215D}\InProcServer32" "" "$INSTDIR\tishell64_25_8_39216.dll"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{00F848DC-B1D4-4892-9C25-CAADC86A215D}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15D-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell64_25_8_39216.dll"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15D-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "DllSurrogate" ""
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Context Menu Extension"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_25_8_39216.dll"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis Secure Zone"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\DefaultIcon" "" "$INSTDIR\tishell_25_8_39216.dll,-4"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories\{00021490-0000-0000-C000-000000000046}" "" ""
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_25_8_39216.dll"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegDWORD HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\ShellFolder" "Attributes" 0xa0000000
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "AppID" "{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell32_25_8_39216.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "resource.dll" "$INSTDIR\resource.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "libcrypto10.dll" "$INSTDIR\libcrypto10.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "thread_pool.dll" "$INSTDIR\thread_pool.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "libssl10.dll" "$INSTDIR\libssl10.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "archive3.dll" "$INSTDIR\archive3.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "astor_client.dll" "$INSTDIR\astor_client.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "archive3_adapter.dll" "$INSTDIR\archive3_adapter.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "pcs_io.dll" "$INSTDIR\pcs_io.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "winpthreads4.dll" "$INSTDIR\winpthreads4.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\CommonComponents" "zstd.dll" "$INSTDIR\zstd.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\GlobalComponents" "icu38.dll" "$INSTDIR\icu38.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\GlobalComponents" "logging.dll" "$INSTDIR\logging.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis\GlobalComponents" "sqlite3.dll" "$INSTDIR\sqlite3.dll"
                StrCpy $InstDir64 $InstDir
                SetOutPath $InstDir64
                File TIB_ShellEx\archive3.dll
                File TIB_ShellEx\archive3_adapter.dll
                File TIB_ShellEx\astor_client.dll
                File TIB_ShellEx\icu38.dll
                File TIB_ShellEx\icudt38.dll
                File TIB_ShellEx\libcrypto10.dll
                File TIB_ShellEx\libssl10.dll
                File TIB_ShellEx\logging.dll
                File TIB_ShellEx\pcs_io.dll
                File TIB_ShellEx\resource.dll
                File TIB_ShellEx\sqlite3.dll
                File TIB_ShellEx\thread_pool.dll
                File TIB_ShellEx\winpthreads4.dll
                File TIB_ShellEx\zstd.dll
                File TIB_ShellEx\msvcp120.dll
                File TIB_ShellEx\msvcr120.dll
                File TIB_ShellEx\tishell_25_8_39216.dll
                File TIB_ShellEx\tishell32_25_8_39216.dll
                File TIB_ShellEx\tishell64_25_8_39216.dll
        ${Else}
                DetailPrint "Installer running on 32-bit host"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}" "" ""
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\DefaultIcon" "" "$INSTDIR\tishell_25_8_39216.dll,-4"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories\{00021490-0000-0000-C000-000000000046}" "" ""
                WriteRegDWORD HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\ShellFolder" "Attributes" 0xa0000000
                WriteRegStr HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "DllSurrogate" ""
                WriteRegStr HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "DllSurrogate" ""
                WriteRegStr HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Context Menu Extension"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_25_8_39216.dll"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis Secure Zone"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\DefaultIcon" "" "$INSTDIR\tishell_25_8_39216.dll,-4"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\Implemented Categories\{00021490-0000-0000-C000-000000000046}" "" ""
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell_25_8_39216.dll"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegDWORD HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}\ShellFolder" "Attributes" 0xa0000000
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "AppID" "{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell32_25_8_39216.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "DllSurrogate" ""
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "DllSurrogate" ""
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "AppID" "{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell32_25_8_39216.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "DllSurrogate" ""
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "" "Acronis True Image Shell Extension Backend"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}" "AppID" "{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "ThreadingModel" "Apartment"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Classes\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" "" "$INSTDIR\tishell32_25_8_39216.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "resource.dll" "$INSTDIR\resource.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "libcrypto10.dll" "$INSTDIR\libcrypto10.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "thread_pool.dll" "$INSTDIR\thread_pool.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "libssl10.dll" "$INSTDIR\libssl10.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "archive3.dll" "$INSTDIR\archive3.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "astor_client.dll" "$INSTDIR\astor_client.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "archive3_adapter.dll" "$INSTDIR\archive3_adapter.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "pcs_io.dll" "$INSTDIR\pcs_io.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "winpthreads4.dll" "$INSTDIR\winpthreads4.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\CommonComponents" "zstd.dll" "$INSTDIR\zstd.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\GlobalComponents" "icu38.dll" "$INSTDIR\icu38.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\GlobalComponents" "logging.dll" "$INSTDIR\logging.dll"
                WriteRegStr HKEY_LOCAL_MACHINE "SOFTWARE\Acronis\GlobalComponents" "sqlite3.dll" "$INSTDIR\sqlite3.dll"
                StrCpy $InstDir32 $InstDir
                SetOutPath $InstDir32
                File TIB_ShellEx\archive3.dll
                File TIB_ShellEx\archive3_adapter.dll
                File TIB_ShellEx\astor_client.dll
                File TIB_ShellEx\icu38.dll
                File TIB_ShellEx\icudt38.dll
                File TIB_ShellEx\libcrypto10.dll
                File TIB_ShellEx\libssl10.dll
                File TIB_ShellEx\logging.dll
                File TIB_ShellEx\pcs_io.dll
                File TIB_ShellEx\resource.dll
                File TIB_ShellEx\sqlite3.dll
                File TIB_ShellEx\thread_pool.dll
                File TIB_ShellEx\winpthreads4.dll
                File TIB_ShellEx\zstd.dll
                File TIB_ShellEx\msvcp120.dll
                File TIB_ShellEx\msvcr120.dll
                File TIB_ShellEx\tishell_25_8_39216.dll
                File TIB_ShellEx\tishell32_25_8_39216.dll
        ${EndIf}
SectionEnd

Section "Write Uninstaller"
        WriteRegExpandStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "UninstallString" '"$INSTDIR\TIB_Shell-uninst.exe"'
        WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "DisplayName" "Acronis Shell Extension (Remove Only)"
        WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "DisplayIcon" '"$INSTDIR\TIB_Shell-uninst.exe"'
        WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "NoModify" "1"
        WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension" "NoRepair" "1"
        WriteUninstaller $INSTDIR\TIB_Shell-uninst.exe
SectionEnd

Section # Final
        System::Call "shell32::SHChangeNotify(i, i, i, i) v (0x08000000, 0, 0, 0)"
        DetailPrint "If doesn't work - reload explorer.exe !!!"
SectionEnd

Section "Uninstall"
        System::Call "shell32::SHChangeNotify(i, i, i, i) v (0x08000000, 0, 0, 0)"
	sleep 1000
        ${If} ${RunningX64}
        SetRegView 64
        DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{00F848DC-B1D4-4892-9C25-CAADC86A215D}"
        DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15D-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
        DeleteRegKey HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_CLASSES_ROOT "WOW6432Node\CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\WOW6432Node\Acronis"
        ${Else}
        DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15B-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_CLASSES_ROOT "AppID\{C4E69DB9-E094-483e-B922-E7ADE65FB497}"
        DeleteRegKey HKEY_CLASSES_ROOT "CLSID\{C539A15C-3AF9-4c92-B771-50CB78F5C751}"
        DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Acronis"
        ${EndIf}
        RMDir /r /REBOOTOK "$INSTDIR"
        DeleteRegKey HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tibx"
        DeleteRegKey HKEY_CURRENT_USER "Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.tib"
        DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibfile"
        DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Classes\tibxfile"
        DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Acronis Shell Extension"
        System::Call "shell32::SHChangeNotify(i, i, i, i) v (0x08000000, 0, 0, 0)"
SectionEnd

Function .onInit
        ReadRegStr $R0 HKEY_CLASSES_ROOT "CLSID\{C539A15A-3AF9-4c92-B771-50CB78F5C751}\InProcServer32" ""
        IfFileExists $R0 +1 NotInstalled
                messageBox MB_OK|MB_ICONSTOP "Acronis Shell Extension already installed!"
                Quit
        NotInstalled:

        # set required section as selected and read-only
        IntOp $0 ${SF_SELECTED} | ${SF_RO}
        SectionSetFlags ${required_id} $0

        ${If} ${RunningX64}
                ${EnableX64FSRedirection}
                StrCpy $InstDir "$PROGRAMFILES64\Acronis\TIB-TIBX ShellEx"
        ${Else}
                StrCpy $InstDir "$PROGRAMFILES32\Acronis\TIB-TIBX ShellEx"
        ${EndIf}
FunctionEnd