del archive.7z
del archive.exe
..\7zr a archive.7z ..\7zr.exe -m0=BCJ2 -m1=LZMA:d25:fb255 -m2=LZMA:d19 -m3=LZMA:d19 -mb0:1 -mb0s1:2 -mb0s2:3 -mx
copy /b ..\7zSD.sfx + config.txt + archive.7z archive.exe
