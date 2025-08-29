000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID.  TESTT.                                              TESTT
000030 AUTHOR.         test table.                                      TESTT
000040 DATE-COMPILED.   21/07/97.                                       TESTT
000050 ENVIRONMENT DIVISION.                                            TESTT
000060 CONFIGURATION SECTION.                                           TESTT
000070 SOURCE-COMPUTER. IBM-370.                                        TESTT
000080 OBJECT-COMPUTER. IBM-370.                                        TESTT
000090 INPUT-OUTPUT SECTION.                                            TESTT
000100 FILE-CONTROL.                                                    TESTT
000110      SELECT     AR-FICHIER    ASSIGN    ARFILE.                  TESTT
000120 DATA DIVISION.                                                   TESTT
000130 FILE SECTION.                                                    TESTT
000140 FD                 AR-FICHIER                                    TESTT
000150      BLOCK              00000 RECORDS                            TESTT
000160      DATA RECORD                                                 TESTT
000170                    AR00                                          TESTT
000180           LABEL RECORD STANDARD.                                 TESTT
000190 01               AR00.                                           TESTT
000200   10             AR00-NOART    PICTURE 9(5).                     TESTT
000210   10             AR00-LIART    PICTURE X(20).                    TESTT
000220   10             AR00-FILLER   PICTURE X(5).                     TESTT
000230 WORKING-STORAGE SECTION.                                         TESTT
000240*                                                                 7WA100
000250 01               1-WA00.                                         7WA200
000260   05             WA00-POSTE    OCCURS 100.                       7WA210
000270     10           WA00-NOART    PICTURE S9(5) COMPUTATIONAL-3.    7WA220
000280     10           WA00-LIART    PICTURE X(20).                    7WA230
000290*                                                                 7WB100
000300 01               WB00-LIART    PICTURE X(20).                    7WB110
000310 01               DEBUT-WSS.                                      TESTT
000320   05             FILLER        PICTURE X(7) VALUE                TESTT
000330                                'WORKING'.                        TESTT
000340   05             IK            PICTURE X.                        TESTT
000350 01               CONSTANTES-PAC.                                 TESTT
000360   05             FILLER        PICTURE X(60) VALUE               TESTT
000370     '0065 LBA21/07/97TESTT TEST    14:39:01TESTT   BVAP21/07/1997TESTT
000380-    ''.                                                          TESTT
000390 01               PAC-CONSTANTES REDEFINES CONSTANTES-PAC.        TESTT
000400   05             NUGNA         PICTURE X(5).                     TESTT
000410   05             APPLI         PICTURE X(3).                     TESTT
000420   05             DATGN         PICTURE X(8).                     TESTT
000430   05             PROGR         PICTURE X(6).                     TESTT
000440   05             CODUTI        PICTURE X(8).                     TESTT
000450   05             TIMGN         PICTURE X(8).                     TESTT
000460   05             PROGE         PICTURE X(8).                     TESTT
000470   05             COBASE        PICTURE X(4).                     TESTT
000480   05             DATGNC        PICTURE X(10).                    TESTT
000490 01               DATCE.                                          TESTT
000500   05             CENTUR        PICTURE XX VALUE                  TESTT
000510                                '19'.                             TESTT
000520   05             DATOR.                                          TESTT
000530     10           DATOA         PICTURE XX.                       TESTT
000540     10           DATOM         PICTURE XX.                       TESTT
000550     10           DATOJ         PICTURE XX.                       TESTT
000560 01               VARIABLES-CONDITIONNELLES.                      TESTT
000570   05             FT            PICTURE X VALUE '0'.              TESTT
000580 01               INDICES       COMPUTATIONAL SYNC.               TESTT
000590   05             IAR00L        PICTURE S9(4) VALUE ZERO.         TESTT
000600   05             IAR00R        PICTURE S9(4) VALUE ZERO.         TESTT
000610   05             IAR00M        PICTURE S9(4) VALUE +0100.        TESTT
000620   05             IWA00L        PICTURE S9(4) VALUE ZERO.         TESTT
000630   05             IWA00R        PICTURE S9(4) VALUE ZERO.         TESTT
000640   05             IWA00M        PICTURE S9(4) VALUE +0098.        TESTT
000650 01               1-AR-TABLE.                                     TESTT
000660   02             1-AR00T.                                        TESTT
000670     05           1-AR00        OCCURS 0100.                      TESTT
000680       10         1-AR00-NOART  PICTURE 9(5).                     TESTT
000690       10         1-AR00-LIART  PICTURE X(20).                    TESTT
000700       10         1-AR00-FILLER PICTURE X(5).                     TESTT
000710 01               ZONES-UTILISATEUR PICTURE X.                    TESTT
000720 PROCEDURE DIVISION.                                              TESTT
000730 N01.                                                             TESTT
000790 F01.                                                             TESTT
000800     EXIT.                                                        TESTT
000810 N01AR.                                                           TESTT
000830 F01AR.                                                           TESTT
000840     OPEN INPUT AR-FICHIER.                                       TESTT
000850 F01AR-10.                                                        TESTT
000860     READ AR-FICHIER AT END                                       TESTT
000870         GO TO F01AR-20.                                          TESTT
000880     ADD 1 TO IAR00L                                              TESTT
000890     IF      IAR00L NOT  >  0100                                  TESTT
000900         MOVE AR00 TO 1-AR00 (IAR00L).                            TESTT
000910     GO TO F01AR-10.                                              TESTT
000920 F01AR-20.                                                        TESTT
000930     IF      IAR00L  >  IAR00M                                    TESTT
000940         MOVE IAR00L TO IAR00R                                    TESTT
000950         MOVE IAR00M TO IAR00L.                                   TESTT
000960 F01AR-99.                                                        TESTT
000970     CLOSE AR-FICHIER.                                            TESTT
000980 F01AR-FN.                                                        TESTT
000990     EXIT.                                                        TESTT
001000 F01-FN.                                                          TESTT
001010     EXIT.                                                        TESTT
001020 N04.                                                             P000
001080 F04.                                                             P000
001090     EXIT.                                                        P000
001100 N04BB.                                                           P000
001120 F04BB.                                                           P000
001130     ACCEPT WB00-LIART                                            P100
001140     DISPLAY 'RECHERCHE DE ' WB00-LIART                           P120
001150     MOVE 1 TO IAR00R.                                            P200
001160 F04BB-200.                                                       P200
001170     IF      IAR00R NOT  >  IAR00L                                P200
001180         AND 1-AR00-LIART (IAR00R) NOT  =  WB00-LIART             P200
001190             ADD 1 TO IAR00R                                      P200
001200             GO TO F04BB-200.                                     P200
001210     DISPLAY 1-AR00-NOART (IAR00R)                                P300
001220     DISPLAY 1-AR00-LIART (IAR00R)                                P400
001230     DISPLAY IAR00R                                               P500
001240     MOVE ALL '1' TO FT GO TO F20.                                P900
001250 F04BB-FN.                                                        P900
001260     EXIT.                                                        P900
001270 F04-FN.                                                          P900
001280     EXIT.                                                        P900
001290*          NOTE *  DEBUT ITERATION DU PROGRAMME     *.            TESTT
001300 F05.                                                             TESTT
001310     EXIT.                                                        TESTT
001320 N20.                                                             TESTT
001380 F20.                                                             TESTT
001390     IF      FT  =  ALL '1'                                       TESTT
001400         NEXT SENTENCE                                            TESTT
001410     ELSE                                                         TESTT
001420         GO TO F20-FN.                                            TESTT
001430 F2099. STOP RUN.                                                 TESTT
001440 F2099-FN.                                                        TESTT
001450     EXIT.                                                        TESTT
001460 F20-FN.                                                          TESTT
001470     EXIT.                                                        TESTT
001480 F9099-ITER-FN.                                                   TESTT
001490     GO TO F05.                                                   TESTT
