:: Delete the pk3 of the previous build.
del rop.pk3
 
:: Go to the ROP folder.
cd ROP

:: Package everything into rop.pk3 one folder above.
:: mx0 means superfast archiving without compression, to launch the game as fast as possible.
:: mx9 means slow and thorough compression, used for releases to minimize file size.
"C:/7-Zip/7z.exe" a -tzip ..\rop.pk3 * -x!.git* -mx0
 
:: Go one folder up.
cd ..
 
:: Launch Zandronum (singleplayer)
:: Cheats are on for testing.
:: You can add any megawads here and make it start on any map.
:: You can make it launch an actual server. Just add -host.
:: If Zandronum can't find the files, either edit zandronum.ini or specify full paths to wads here.
"D:\zaidimai\skulltag\zandronum\zandronum.exe" +sv_cheats 1 -iwad doom2.wad -file rop.pk3 -skill 4 +map map01