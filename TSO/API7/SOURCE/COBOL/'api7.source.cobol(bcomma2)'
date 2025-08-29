000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID.  BCOMMA.                                             BCOMMA
000030 AUTHOR.         lire les commandes.                              BCOMMA
000040 DATE-COMPILED.   18/07/97.                                       BCOMMA
000050 ENVIRONMENT DIVISION.                                            BCOMMA
000060 CONFIGURATION SECTION.                                           BCOMMA
000070 SOURCE-COMPUTER. IBM-370.                                        BCOMMA
000080 OBJECT-COMPUTER. IBM-370.                                        BCOMMA
000090 INPUT-OUTPUT SECTION.                                            BCOMMA
000100 FILE-CONTROL.                                                    BCOMMA
000110      SELECT     CD-FICHIER    ASSIGN    COMMAND.                 BCOMMA
000120 DATA DIVISION.                                                   BCOMMA
000130 FILE SECTION.                                                    BCOMMA
000140 FD                 CD-FICHIER                                    BCOMMA
000150      BLOCK              00000 RECORDS                            BCOMMA
000160      DATA RECORD                                                 BCOMMA
000170                    CD00                                          BCOMMA
000180                    CD10                                          BCOMMA
000190                    CD20                                          BCOMMA
000200           LABEL RECORD STANDARD.                                 BCOMMA
000210 01               CD00.                                           BCOMMA
000220   05             CD00-00.                                        BCOMMA
000230     10           CD00-NOCDE    PICTURE 999.                      BCOMMA
000240     10           CD00-COSTRU   PICTURE X.                        BCOMMA
000250     10           CD00-NOLIGX.                                    BCOMMA
000260       11         CD00-NOLIG    PICTURE 99.                       BCOMMA
000270   05             CD00-SUITE.                                     BCOMMA
000280     15           FILLER        PICTURE X(00028).                 BCOMMA
000290 01               CD10.                                           BCOMMA
000300   10             FILLER        PICTURE X(00006).                 BCOMMA
000310   10             CD10-DTCDE    PICTURE X(8).                     BCOMMA
000320   10             CD10-LICLIE   PICTURE X(20).                    BCOMMA
000330 01               CD20.                                           BCOMMA
000340   10             FILLER        PICTURE X(00006).                 BCOMMA
000350   10             CD20-NOLIG    PICTURE 99.                       BCOMMA
000360   10             CD20-QUART    PICTURE 99.                       BCOMMA
000370   10             CD20-LIART    PICTURE X(20).                    BCOMMA
000380   10             CD20-FILLER   PICTURE X(4).                     BCOMMA
000390 WORKING-STORAGE SECTION.                                         BCOMMA
000400*                                                                 7WA100
000410 01               WA00-QUAERB   VALUE ZERO PICTURE 99             7WA200
000420                                COMPUTATIONAL-3.                  7WA200
000430 01               DEBUT-WSS.                                      BCOMMA
000440   05             FILLER        PICTURE X(7) VALUE                BCOMMA
000450                                'WORKING'.                        BCOMMA
000460   05             IK            PICTURE X.                        BCOMMA
000470 01               CONSTANTES-PAC.                                 BCOMMA
000480   05             FILLER        PICTURE X(60) VALUE               BCOMMA
000490     '0064 LBA18/07/97BCOMMATEST    11:34:05BCOMMA  BVAP18/07/1997BCOMMA
000500-    ''.                                                          BCOMMA
000510 01               PAC-CONSTANTES REDEFINES CONSTANTES-PAC.        BCOMMA
000520   05             NUGNA         PICTURE X(5).                     BCOMMA
000530   05             APPLI         PICTURE X(3).                     BCOMMA
000540   05             DATGN         PICTURE X(8).                     BCOMMA
000550   05             PROGR         PICTURE X(6).                     BCOMMA
000560   05             CODUTI        PICTURE X(8).                     BCOMMA
000570   05             TIMGN         PICTURE X(8).                     BCOMMA
000580   05             PROGE         PICTURE X(8).                     BCOMMA
000590   05             COBASE        PICTURE X(4).                     BCOMMA
000600   05             DATGNC        PICTURE X(10).                    BCOMMA
000610 01               DATCE.                                          BCOMMA
000620   05             CENTUR        PICTURE XX VALUE                  BCOMMA
000630                                '19'.                             BCOMMA
000640   05             DATOR.                                          BCOMMA
000650     10           DATOA         PICTURE XX.                       BCOMMA
000660     10           DATOM         PICTURE XX.                       BCOMMA
000670     10           DATOJ         PICTURE XX.                       BCOMMA
000680 01               VARIABLES-CONDITIONNELLES.                      BCOMMA
000690   05             FT.                                             BCOMMA
000700     10           CD-FT         PICTURE X VALUE                   BCOMMA
000710                                '0'.                              BCOMMA
000720 01               COMPTEURS-FICHIERS COMPUTATIONAL-3.             BCOMMA
000730   05             5-CD00-CPTENR PICTURE S9(9) VALUE ZERO.         BCOMMA
000740 01               ZONES-UTILISATEUR PICTURE X.                    BCOMMA
000750 PROCEDURE DIVISION.                                              BCOMMA
000760
000820 F01.                                                             BCOMMA
000830     EXIT.                                                        BCOMMA
000840 N01CD.                                                           BCOMMA
000850
000860 F01CD.                                                           BCOMMA
000870     OPEN INPUT CD-FICHIER.                                       BCOMMA
000880 F01CD-FN.                                                        BCOMMA
000890     EXIT.                                                        BCOMMA
000900 F01-FN.                                                          BCOMMA
000910     EXIT.                                                        BCOMMA
000920
000930 F05.                                                             BCOMMA
000940     EXIT.                                                        BCOMMA
000950 N05.                                                             BCOMMA
000960
001010 N05CD.                                                           BCOMMA
001020
001030 F05CD.                                                           BCOMMA
001040     IF      CD-FT  =  '0'                                        BCOMMA
001050         NEXT SENTENCE                                            BCOMMA
001060     ELSE                                                         BCOMMA
001070         GO TO F05CD-FN.                                          BCOMMA
001080 F05CD-10.                                                        BCOMMA
001090     READ CD-FICHIER AT END                                       BCOMMA
001100         MOVE 1 TO CD-FT                                          BCOMMA
001110         GO TO F05CD-FN.                                          BCOMMA
001120     ADD 1 TO 5-CD00-CPTENR.                                      BCOMMA
001130 F05CD-FN.                                                        BCOMMA
001140     EXIT.                                                        BCOMMA
001150 F05-FN.                                                          BCOMMA
001160     EXIT.                                                        BCOMMA
001170 N20.                                                             BCOMMA
001180
001230 F20.                                                             BCOMMA
001240     IF      FT  =  ALL '1'                                       BCOMMA
001250         NEXT SENTENCE                                            BCOMMA
001260     ELSE                                                         BCOMMA
001270         GO TO F20-FN.                                            BCOMMA
001280 F20CD.                                                           BCOMMA
001290     CLOSE CD-FICHIER.                                            BCOMMA
001300 F20CD-FN.                                                        BCOMMA
001310     EXIT.                                                        BCOMMA
001320 F2099. STOP RUN.                                                 BCOMMA
001330 F2099-FN.                                                        BCOMMA
001340     EXIT.                                                        BCOMMA
001350 F20-FN.                                                          BCOMMA
001360     EXIT.                                                        BCOMMA
001370 N70.                                                             P000
001380
001430 F70.                                                             P000
001440     DISPLAY 'F70 '.                                              P100
001450 N70CC.                                                           P000
001460
001470 F70CC.                                                           P000
001480     DISPLAY 'F70CC '.                                            P100
001490 N70FF.                                                           P000
001500
001510 F70FF.                                                           P000
001520     IF      CD00-COSTRU  =  'H'                                  P000
001530         NEXT SENTENCE                                            P000
001540     ELSE                                                         P000
001550         GO TO F70FF-FN.                                          P000
001560     DISPLAY 'F70FF '                                             P100
001570     DISPLAY CD00.                                                P200
001580 N70FM.                                                           P000
001590
001600 F70FM.                                                           P000
001610     DISPLAY 'F70HH '.                                            P100
001620 F70FM-FN.                                                        P100
001630     EXIT.                                                        P100
001640 F70FF-900.                                                       P100
001650     GO TO F70GG-FN.                                              P100
001660 F70FF-FN.                                                        P100
001670     EXIT.                                                        P100
001680 N70GG.                                                           P000
001690
001700 F70GG.                                                           P000
001710     DISPLAY 'F70GG '                                             P100
001720     DISPLAY CD00.                                                P200
001730 N70HH.                                                           P000
001740
001750 F70HH.                                                           P000
001760     IF      CD20-LIART  <  'D'                                   P000
001770         NEXT SENTENCE                                            P000
001780     ELSE                                                         P000
001790         GO TO F70HH-FN.                                          P000
001800     DISPLAY 'F70HH '                                             P100
001810     DISPLAY 'CD20-LIART '.                                       P200
001820 F70HH-FN.                                                        P200
001830     EXIT.                                                        P200
001840 N70II.                                                           P000
001850
001860 F70II.                                                           P000
001870     DISPLAY 'F70II '                                             P100
001880     DISPLAY 'CD20-LIART '.                                       P200
001890     IF      CD20-LIART  <  'M'                                   P300
001900         DISPLAY '****'.                                          P300
001910 F70II-FN.                                                        P300
001920     EXIT.                                                        P300
001930 F70GG-FN.                                                        P300
001940     EXIT.                                                        P300
001950 F70CC-FN.                                                        P300
001960     EXIT.                                                        P300
001970 F70-FN.                                                          P300
001980     EXIT.                                                        P300
001990 F9099-ITER-FN.                                                   BCOMMA
002000     GO TO F05.                                                   BCOMMA
