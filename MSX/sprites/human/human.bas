10 ' --- Slot 0
20 ' color 9
30 DATA 03,07,0F,0E,1D,1D,3D,38,38,38,16,07,07,0F,0E,00
40 DATA A0,F0,F8,08,28,20,20,00,C0,C0,10,F0,F0,E0,00,00
50 ' color 11
60 DATA 00,00,00,01,02,02,02,07,07,07,01,00,18,10,10,00
70 DATA 00,00,00,F0,D0,D0,D0,F0,30,3C,EC,0C,00,00,1C,1C
80 ' 
90 ' --- Slot 1
100 ' color 9
110 DATA 00,03,07,0F,1E,1D,3D,3D,78,78,70,26,07,07,03,00
120 DATA 00,A0,F0,F8,08,28,20,20,00,00,C0,10,F0,F0,C0,00
130 ' color 11
140 DATA 00,00,00,00,01,02,02,02,07,07,07,01,00,00,00,01
150 DATA 00,00,00,00,F0,D0,D0,D0,F0,F0,30,E0,00,00,00,C0
160 ' 
170 ' --- Slot 2
180 ' color 9
190 DATA 05,0F,1F,10,14,04,04,00,03,03,08,0F,0F,07,00,00
200 DATA C0,E0,F0,70,B8,B8,BC,1C,1C,1C,68,E0,E0,F0,70,00
210 ' color 11
220 DATA 00,00,00,0F,0B,0B,0B,0F,0C,3C,37,30,00,00,38,38
230 DATA 00,00,00,80,40,40,40,E0,E0,E0,80,00,18,08,08,00
240 ' 
250 ' --- Slot 3
260 ' color 9
270 DATA 00,05,0F,1F,10,14,04,04,00,00,03,08,0F,0F,03,00
280 DATA 00,C0,E0,F0,78,B8,BC,BC,1E,1E,0E,64,E0,E0,C0,00
290 ' color 11
300 DATA 00,00,00,00,0F,0B,0B,0B,0F,0F,0C,07,00,00,00,03
310 DATA 00,00,00,00,80,40,40,40,E0,E0,E0,80,00,00,00,80
320 ' 
330 ' --- Slot 4
340 ' color 5
350 DATA 03,07,0F,0E,1D,1D,0D,08,00,00,06,07,07,0F,0E,00
360 DATA B0,F8,F8,08,28,20,20,00,C0,C0,10,F0,F0,E0,00,00
370 ' color 11
380 DATA 00,00,00,01,02,02,02,07,07,07,01,00,18,10,10,00
390 DATA 00,00,00,F0,D0,D0,D0,F0,30,3C,EC,0C,00,00,1C,1C
400 ' 
410 ' --- Slot 5
420 ' color 5
430 DATA 00,03,07,0F,1E,1D,1D,0D,08,00,00,06,07,07,03,00
440 DATA 00,B0,F0,F8,08,28,20,20,00,00,C0,10,F0,F0,C0,00
450 ' color 11
460 DATA 00,00,00,00,01,02,02,02,07,07,07,01,00,00,00,01
470 DATA 00,00,00,00,F0,D0,D0,D0,F0,F0,30,E0,00,00,00,C0
480 ' 
490 ' --- Slot 6
500 ' color 5
510 DATA 0D,1F,1F,10,14,04,04,00,03,03,08,0F,0F,07,00,00
520 DATA C0,E0,F0,70,B8,B8,B0,10,00,00,60,E0,E0,F0,70,00
530 ' color 11
540 DATA 00,00,00,0F,0B,0B,0B,0F,0C,3C,37,30,00,00,38,38
550 DATA 00,00,00,80,40,40,40,E0,E0,E0,80,00,18,08,08,00
560 ' 
570 ' --- Slot 7
580 ' color 5
590 DATA 00,0D,0F,1F,10,14,04,04,00,00,03,08,0F,0F,03,00
600 DATA 00,C0,E0,F0,78,B8,B8,B0,10,00,00,60,E0,E0,C0,00
610 ' color 11
620 DATA 00,00,00,00,0F,0B,0B,0B,0F,0F,0C,07,00,00,00,03
630 DATA 00,00,00,00,80,40,40,40,E0,E0,E0,80,00,00,00,80
640 DATA *
650 SCREEN 2,2,0: GOSUB 10000
660 PUT SPRITE 0,(0,0),9,0:PUT SPRITE 1,(0,0),11,1
670 PUT SPRITE 2,(0,16),9,2:PUT SPRITE 3,(0,16),11,3
680 PUT SPRITE 4,(0,32),9,4:PUT SPRITE 5,(0,32),11,5
690 PUT SPRITE 6,(0,48),9,6:PUT SPRITE 7,(0,48),11,7
700 PUT SPRITE 8,(0,64),5,8:PUT SPRITE 9,(0,64),11,9
710 PUT SPRITE 10,(0,80),5,10:PUT SPRITE 11,(0,80),11,11
720 PUT SPRITE 12,(0,96),5,12:PUT SPRITE 13,(0,96),11,13
730 PUT SPRITE 14,(0,112),5,14:PUT SPRITE 15,(0,112),11,15
740 GOTO 740
10000 REM -- LOAD SPRITES
10010 S=BASE(9)
10020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 10020
