000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID.  BARTIC.                                             BARTIC
000030 AUTHOR.         lire un fichier.                                 BARTIC
000040 DATE-COMPILED.   16/07/97.                                       BARTIC
000050 ENVIRONMENT DIVISION.                                            BARTIC
000060 CONFIGURATION SECTION.                                           BARTIC
000070 SOURCE-COMPUTER. IBM-370.                                        BARTIC
000080 OBJECT-COMPUTER. IBM-370.                                        BARTIC
000090 INPUT-OUTPUT SECTION.                                            BARTIC
000100 FILE-CONTROL.                                                    BARTIC
000110      SELECT     AR-FICHIER    ASSIGN    UT-S-ARTICL.             BARTIC
000120 DATA DIVISION.                                                   BARTIC
000130 FILE SECTION.                                                    BARTIC
000140 FD                 AR-FICHIER                                    BARTIC
000150      BLOCK              00000 RECORDS                            BARTIC
000160      DATA RECORD                                                 BARTIC
000170                    AR00                                          BARTIC
000180           LABEL RECORD STANDARD.                                 BARTIC
000190 01               AR00.                                           BARTIC
000200   10             AR00-NOART    PICTURE 9(5).                     BARTIC
000210   10             AR00-LIART    PICTURE X(20).                    BARTIC
000220   10             AR00-FILLER   PICTURE X(5).                     BARTIC
000230 WORKING-STORAGE SECTION.                                         BARTIC
000240 01               DEBUT-WSS.                                      BARTIC
000250   05             FILLER        PICTURE X(7) VALUE                BARTIC
000260                                'WORKING'.                        BARTIC
000270   05             IK            PICTURE X.                        BARTIC
000280 01               CONSTANTES-PAC.                                 BARTIC
000290   05             FILLER        PICTURE X(60) VALUE               BARTIC
000300     '0061 LBA16/07/97BARTICTEST    08:36:23BARTIC  BVAP16/07/1997BARTIC
000310-    ''.                                                          BARTIC
000320 01               PAC-CONSTANTES REDEFINES CONSTANTES-PAC.        BARTIC
000330   05             NUGNA         PICTURE X(5).                     BARTIC
000340   05             APPLI         PICTURE X(3).                     BARTIC
000350   05             DATGN         PICTURE X(8).                     BARTIC
000360   05             PROGR         PICTURE X(6).                     BARTIC
000370   05             CODUTI        PICTURE X(8).                     BARTIC
000380   05             TIMGN         PICTURE X(8).                     BARTIC
000390   05             PROGE         PICTURE X(8).                     BARTIC
000400   05             COBASE        PICTURE X(4).                     BARTIC
000410   05             DATGNC        PICTURE X(10).                    BARTIC
000420 01               DATCE.                                          BARTIC
000430   05             CENTUR        PICTURE XX VALUE                  BARTIC
000440                                '19'.                             BARTIC
000450   05             DATOR.                                          BARTIC
000460     10           DATOA         PICTURE XX.                       BARTIC
000470     10           DATOM         PICTURE XX.                       BARTIC
000480     10           DATOJ         PICTURE XX.                       BARTIC
000490 01               VARIABLES-CONDITIONNELLES.                      BARTIC
000500   05             FT.                                             BARTIC
000510     10           AR-FT         PICTURE X VALUE                   BARTIC
000520                                '0'.                              BARTIC
000530 01               COMPTEURS-FICHIERS COMPUTATIONAL-3.             BARTIC
000540   05             5-AR00-CPTENR PICTURE S9(9) VALUE ZERO.         BARTIC
000550 PROCEDURE DIVISION.                                              BARTIC
000560 N01.                                                             BARTIC
000620 F01.                                                             BARTIC
000630     EXIT.                                                        BARTIC
000640 N01AR.                                                           BARTIC
000660 F01AR.                                                           BARTIC
000670     OPEN INPUT AR-FICHIER.                                       BARTIC
000680 F01AR-FN.                                                        BARTIC
000690     EXIT.                                                        BARTIC
000700 F01-FN.                                                          BARTIC
000710     EXIT.                                                        BARTIC
000720*          NOTE *  DEBUT ITERATION DU PROGRAMME     *.            BARTIC
000730 F05.                                                             BARTIC
000740     EXIT.                                                        BARTIC
000750 N05.                                                             BARTIC
000810 N05AR.                                                           BARTIC
000830 F05AR.                                                           BARTIC
000840     IF      AR-FT  =  '0'                                        BARTIC
000850         NEXT SENTENCE                                            BARTIC
000860     ELSE                                                         BARTIC
000870         GO TO F05AR-FN.                                          BARTIC
000880 F05AR-10.                                                        BARTIC
000890     READ AR-FICHIER AT END                                       BARTIC
000900         MOVE 1 TO AR-FT                                          BARTIC
000910         GO TO F05AR-FN.                                          BARTIC
000920     ADD 1 TO 5-AR00-CPTENR.                                      BARTIC
000930 F05AR-FN.                                                        BARTIC
000940     EXIT.                                                        BARTIC
000950 F05-FN.                                                          BARTIC
000960     EXIT.                                                        BARTIC
000970 N20.                                                             BARTIC
001030 F20.                                                             BARTIC
001040     IF      FT  =  ALL '1'                                       BARTIC
001050         NEXT SENTENCE                                            BARTIC
001060     ELSE                                                         BARTIC
001070         GO TO F20-FN.                                            BARTIC
001080 F20AR.                                                           BARTIC
001090     CLOSE AR-FICHIER.                                            BARTIC
001100 F20AR-FN.                                                        BARTIC
001110     EXIT.                                                        BARTIC
001120 F2099. STOP RUN.                                                 BARTIC
001130 F2099-FN.                                                        BARTIC
001140     EXIT.                                                        BARTIC
001150 F20-FN.                                                          BARTIC
001160     EXIT.                                                        BARTIC
001170 N70.                                                             P000

001230 F70.                                                             P000
001240     EXIT.                                                        P000
001250 N70CC.                                                           P000

001270 F70CC.                                                           P000
001280     DISPLAY 'NUMERO D''ARTICLE : '                               P100
001290     AR00-NOART                                                   P120
001300     DISPLAY 'NOM D''ARTICLE : '                                  P200
001310     AR00-LIART.                                                  P220
001320 F70CC-FN.                                                        P220
001330     EXIT.                                                        P220
001340 F70-FN.                                                          P220
001350     EXIT.                                                        P220
001360 F9099-ITER-FN.                                                   BARTIC
001370     GO TO F05.                                                   BARTIC
