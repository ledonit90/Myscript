runas user:administrator
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\testADD"

reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\testADD /t REG_SZ /v UpgradeDone /d true /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /t REG_SZ /v EditionID /d Professional /f


------------------------------ Explains ---------------------------------------------------
REG ADD /? explains the parameters.

REG ADD KeyName [/v ValueName | /ve] [/t type] [/s Separator] [/d Data] [/f]

KeyName     [\\Machine\]FullKey

Machine     Name of remote machine - omitting defaults to the current machine 
            Only HKLM and HKU are available on remote machines
FullKey     ROOTKEY\SubKey ROOTKEY [ HKLM | HKCU | HKCR | HKU | HKCC ] SubKey 
            The full name of a registry key under the selected ROOTKEY
/v          The value name, under the selected Key, to add
/ve         adds an empty value name <no name> for the key
/t          RegKey data types
            [ REG_SZ | REG_MULTI_SZ | REG_DWORD_BIG_ENDIAN | REG_DWORD | 
              REG_BINARY | REG_DWORD_LITTLE_ENDIAN | REG_NONE | REG_EXPAND_SZ ]
            If omitted, REG_SZ is assumed
/s          Specify one character that you use as the separator in your data 
            string for REG_MULTI_SZ. If omitted, use "\0" as the separator
/d          The data to assign to the registry ValueName being added
/f          Force overwriting the existing registry entry without prompt