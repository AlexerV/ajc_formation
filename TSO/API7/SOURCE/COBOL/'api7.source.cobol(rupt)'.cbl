000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID.  RUPT.                                               RUPT
000030 AUTHOR.         stat pilote par pays.                            RUPT
000040 DATE-COMPILED.   22/07/97.                                       RUPT
000050 ENVIRONMENT DIVISION.                                            RUPT
000060 CONFIGURATION SECTION.                                           RUPT
000070 SOURCE-COMPUTER. IBM-370.                                        RUPT
000080 OBJECT-COMPUTER. IBM-370.                                        RUPT
000090 INPUT-OUTPUT SECTION.                                            RUPT
000100 FILE-CONTROL.                                                    RUPT
000110      SELECT     AJ-FICHIER    ASSIGN    AJFILE.                  RUPT
000120 DATA DIVISION.                                                   RUPT
000130 FILE SECTION.                                                    RUPT
000140 FD                 AJ-FICHIER                                    RUPT
000150      BLOCK              00000 RECORDS                            RUPT
000160      DATA RECORD                                                 RUPT
000170                    AJ00                                          RUPT
000180           LABEL RECORD STANDARD.                                 RUPT
000190 01               AJ00.                                           RUPT
000200   10             AJ00-COPAY    PICTURE X(2).                     RUPT
000210   10             AJ00-COAVI    PICTURE X(03).                    RUPT
000220   10             AJ00-QUPIL    PICTURE 9(3).                     RUPT
000230 WORKING-STORAGE SECTION.                                         RUPT
000240*                                                                 7WA100
000250 01               WAPA-QUPIL    PICTURE 9(3).                     7WA200
000260 01               WAAV-QUPIL    PICTURE 9(3).                     7WA220
000270 01               WAGE-QUPIL    VALUE ZERO PICTURE 9(3).          7WA230
000280 01               DEBUT-WSS.                                      RUPT
000290   05             FILLER        PICTURE X(7) VALUE                RUPT
000300                                'WORKING'.                        RUPT
000310   05             IK            PICTURE X.                        RUPT
000320 01               CONSTANTES-PAC.                                 RUPT
000330   05             FILLER        PICTURE X(60) VALUE               RUPT
000340     '0066 LBA22/07/97RUPT  TEST    11:46:08RUPT    BVAP22/07/1997RUPT
000350-    ''.                                                          RUPT
000360 01               PAC-CONSTANTES REDEFINES CONSTANTES-PAC.        RUPT
000370   05             NUGNA         PICTURE X(5).                     RUPT
000380   05             APPLI         PICTURE X(3).                     RUPT
000390   05             DATGN         PICTURE X(8).                     RUPT
000400   05             PROGR         PICTURE X(6).                     RUPT
000410   05             CODUTI        PICTURE X(8).                     RUPT
000420   05             TIMGN         PICTURE X(8).                     RUPT
000430   05             PROGE         PICTURE X(8).                     RUPT
000440   05             COBASE        PICTURE X(4).                     RUPT
000450   05             DATGNC        PICTURE X(10).                    RUPT
000460 01               DATCE.                                          RUPT
000470   05             CENTUR        PICTURE XX VALUE                  RUPT
000480                                '19'.                             RUPT
000490   05             DATOR.                                          RUPT
000500     10           DATOA         PICTURE XX.                       RUPT
000510     10           DATOM         PICTURE XX.                       RUPT
000520     10           DATOJ         PICTURE XX.                       RUPT
000530 01               VARIABLES-CONDITIONNELLES.                      RUPT
000540   05             RTD.                                            RUPT
000550     10           RTD1          PICTURE X VALUE                   RUPT
000560                                '1'.                              RUPT
000570     10           RTD2          PICTURE X VALUE                   RUPT
000580                                '1'.                              RUPT
000590   05             NRD           PICTURE 9 VALUE 1.                RUPT
000600   05             NRP           PICTURE 9 VALUE ZERO.             RUPT
000610   05             RTP.                                            RUPT
000620     10           RTP1          PICTURE X VALUE                   RUPT
000630                                '1'.                              RUPT
000640     10           RTP2          PICTURE X VALUE                   RUPT
000650                                '1'.                              RUPT
000660   05             AJ-DE.                                          RUPT
000670     10           AJ-DE1        PICTURE X VALUE                   RUPT
000680                                '1'.                              RUPT
000690     10           AJ-DE2        PICTURE X VALUE                   RUPT
000700                                '1'.                              RUPT
000710   05             AJ-PE.                                          RUPT
000720     10           AJ-PE1        PICTURE X VALUE                   RUPT
000730                                '1'.                              RUPT
000740     10           AJ-PE2        PICTURE X VALUE                   RUPT
000750                                '1'.                              RUPT
000760   05             FT.                                             RUPT
000770     10           AJ-FT         PICTURE X VALUE                   RUPT
000780                                '0'.                              RUPT
000790   05             FI.                                             RUPT
000800     10           AJ-FI         PICTURE X VALUE                   RUPT
000810                                '0'.                              RUPT
000820 01               COMPTEURS-FICHIERS COMPUTATIONAL-3.             RUPT
000830   05             5-AJ00-CPTENR PICTURE S9(9) VALUE ZERO.         RUPT
000840 01               1-AJ00.                                         RUPT
000850   10             1-AJ00-COPAY  PICTURE X(2).                     RUPT
000860   10             1-AJ00-COAVI  PICTURE X(03).                    RUPT
000870   10             1-AJ00-QUPIL  PICTURE 9(3).                     RUPT
000880 01               ZONES-UTILISATEUR PICTURE X.                    RUPT
000890 PROCEDURE DIVISION.                                              RUPT
000900 N01.                                                             RUPT
000960 F01.                                                             RUPT
000970     EXIT.                                                        RUPT
000980 N01AJ.                                                           RUPT
001000 F01AJ.                                                           RUPT
001010     OPEN INPUT AJ-FICHIER.                                       RUPT
001020 F01AJ-10.                                                        RUPT
001030     READ AJ-FICHIER AT END                                       RUPT
001040         MOVE 1 TO AJ-FI.                                         RUPT
001050 F01AJ-FN.                                                        RUPT
001060     EXIT.                                                        RUPT
001070 F01-FN.                                                          RUPT
001080     EXIT.                                                        RUPT
001090*          NOTE *  DEBUT ITERATION DU PROGRAMME     *.            RUPT
001100 F05.                                                             RUPT
001110     EXIT.                                                        RUPT
001120 N10.                                                             RUPT
001180 F10.                                                             RUPT
001190     EXIT.                                                        RUPT
001200 N10AJ.                                                           RUPT
001220 F10AJ-10.                                                        RUPT
001230     MOVE AJ-DE TO AJ-PE.                                         RUPT
001240     MOVE NRD TO NRP.                                             RUPT
001250     IF      AJ-FI  =  '1'                                        RUPT
001260         MOVE 1 TO AJ-FT                                          RUPT
001270         GO TO F10AJ-FN.                                          RUPT
001280     MOVE AJ00 TO 1-AJ00.                                         RUPT
001290     ADD 1 TO 5-AJ00-CPTENR.                                      RUPT
001300     READ AJ-FICHIER AT END                                       RUPT
001310         MOVE 1 TO AJ-FI.                                         RUPT
001320 F10AJ-FN.                                                        RUPT
001330     EXIT.                                                        RUPT
001340 F10-FN.                                                          RUPT
001350     EXIT.                                                        RUPT
001360 N20.                                                             RUPT
001420 F20.                                                             RUPT
001430     IF      FT  =  ALL '1'                                       RUPT
001440         NEXT SENTENCE                                            RUPT
001450     ELSE                                                         RUPT
001460         GO TO F20-FN.                                            RUPT
001470 F20AJ.                                                           RUPT
001480     CLOSE AJ-FICHIER.                                            RUPT
001490 F20AJ-FN.                                                        RUPT
001500     EXIT.                                                        RUPT
001510 F2099. STOP RUN.                                                 RUPT
001520 F2099-FN.                                                        RUPT
001530     EXIT.                                                        RUPT
001540 F20-FN.                                                          RUPT
001550     EXIT.                                                        RUPT
001560 N22.                                                             RUPT
001620 F22.                                                             RUPT
001630     EXIT.                                                        RUPT
001640 N22AJ.                                                           RUPT
001660 F22AJ.                                                           RUPT
001670     MOVE ZERO TO AJ-DE.                                          RUPT
001680     MOVE ZERO TO NRD.                                            RUPT
001690     MOVE RTD TO RTP.                                             RUPT
001700     MOVE ZERO TO RTD.                                            RUPT
001710     IF      AJ-FI  =  '1'  MOVE 1 TO NRD                         RUPT
001720         GO TO F22AJ-1.                                           RUPT
001730     IF      AJ00-COPAY NOT  =  1-AJ00-COPAY                      RUPT
001740         MOVE 1 TO NRD                                            RUPT
001750         GO TO F22AJ-1.                                           RUPT
001760     IF      AJ00-COAVI NOT  =  1-AJ00-COAVI                      RUPT
001770         MOVE 2 TO NRD                                            RUPT
001780         GO TO F22AJ-2.                                           RUPT
001790     GO TO F22AJ-FN.                                              RUPT
001800 F22AJ-1.                                                         RUPT
001810     MOVE 1 TO AJ-DE1.                                            RUPT
001820 F22AJ-2.                                                         RUPT
001830     MOVE 1 TO AJ-DE2.                                            RUPT
001840     MOVE AJ-DE TO RTD.                                           RUPT
001850 F22AJ-FN.                                                        RUPT
001860     EXIT.                                                        RUPT
001870 F22-FN.                                                          RUPT
001880     EXIT.                                                        RUPT
001890 N71.                                                             P000
001950 F71.                                                             P000
001960     EXIT.                                                        P000
001970 N71BA.                                                           P000
001990 F71BA.                                                           P000
002000     IF      RTP1  =  '1'                                         P000
002010         NEXT SENTENCE                                            P000
002020     ELSE                                                         P000
002030         GO TO F71BA-FN.                                          P000
002040     DISPLAY 'PREMIER PAYS ' 1-AJ00-COPAY                         P100
002050     MOVE ZERO TO WAPA-QUPIL.                                     P200
002060 F71BA-FN.                                                        P200
002070     EXIT.                                                        P200
002080 N71CA.                                                           P000
002100 F71CA.                                                           P000
002110     IF      RTP2  =  '1'                                         P000
002120         NEXT SENTENCE                                            P000
002130     ELSE                                                         P000
002140         GO TO F71CA-FN.                                          P000
002150     DISPLAY 'PREMIER AVION ' 1-AJ00-COAVI                        P100
002160     MOVE ZERO TO WAAV-QUPIL.                                     P200
002170 F71CA-FN.                                                        P200
002180     EXIT.                                                        P200
002190 N71DA.                                                           P000
002210 F71DA.                                                           P000
002220     DISPLAY 1-AJ00                                               P100
002230     ADD 1-AJ00-QUPIL TO WAPA-QUPIL                               P200
002240     ADD 1-AJ00-QUPIL TO WAAV-QUPIL                               P220
002250     ADD 1-AJ00-QUPIL TO WAGE-QUPIL.                              P240
002260 F71DA-FN.                                                        P240
002270     EXIT.                                                        P240
002280 N71EA.                                                           P000
002300 F71EA.                                                           P000
002310     IF      RTD2  =  '1'                                         P000
002320         NEXT SENTENCE                                            P000
002330     ELSE                                                         P000
002340         GO TO F71EA-FN.                                          P000
002350     DISPLAY 'DERNIER ENR DE CET AVION : '                        P100
002360     1-AJ00-COAVI                                                 P110
002370     DISPLAY 'NOMBRE DE PILOTES DE L''AVION '                     P200
002380     WAAV-QUPIL.                                                  P220
002390 F71EA-FN.                                                        P220
002400     EXIT.                                                        P220
002410 N71FA.                                                           P000
002430 F71FA.                                                           P000
002440     IF      RTD1  =  '1'                                         P000
002450         NEXT SENTENCE                                            P000
002460     ELSE                                                         P000
002470         GO TO F71FA-FN.                                          P000
002480     DISPLAY 'DERNIER ENR PAYS ' 1-AJ00-COPAY                     P100
002490     DISPLAY 'NOMBRE DE PILOTES DANS LE '                         P200
002500     'PAYS ' WAPA-QUPIL.                                          P210
002510 F71FA-FN.                                                        P210
002520     EXIT.                                                        P210
002530 N71HA.                                                           P000
002550 F71HA.                                                           P000
002560     IF      FI  =  '1'                                           P000
002570         NEXT SENTENCE                                            P000
002580     ELSE                                                         P000
002590         GO TO F71HA-FN.                                          P000
002600     DISPLAY 'NOMBRE DE PILOTES TOTAL : '                         P100
002610     WAGE-QUPIL.                                                  P110
002620 F71HA-FN.                                                        P110
002630     EXIT.                                                        P110
002640 F71-FN.                                                          P110
002650     EXIT.                                                        P110
002660 F9099-ITER-FN.                                                   RUPT
002670     GO TO F05.                                                   RUPT
