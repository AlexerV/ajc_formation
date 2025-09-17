000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID.  SYNCRO.                                             SYNCRO
000030 AUTHOR.         exemple de synchro.                              SYNCRO
000040 DATE-COMPILED.   22/07/97.                                       SYNCRO
000050 ENVIRONMENT DIVISION.                                            SYNCRO
000060 CONFIGURATION SECTION.                                           SYNCRO
000070 SOURCE-COMPUTER. IBM-370.                                        SYNCRO
000080 OBJECT-COMPUTER. IBM-370.                                        SYNCRO
000090 INPUT-OUTPUT SECTION.                                            SYNCRO
000100 FILE-CONTROL.                                                    SYNCRO
000110      SELECT     SY-FICHIER    ASSIGN    PAYS.                    SYNCRO
000120      SELECT     YS-FICHIER    ASSIGN    CAPITA.                  SYNCRO
000130 DATA DIVISION.                                                   SYNCRO
000140 FILE SECTION.                                                    SYNCRO
000150 FD                 SY-FICHIER                                    SYNCRO
000160      BLOCK              00000 RECORDS                            SYNCRO
000170      DATA RECORD                                                 SYNCRO
000180                    SY00                                          SYNCRO
000190           LABEL RECORD STANDARD.                                 SYNCRO
000200 01               SY00.                                           SYNCRO
000210   10             SY00-COPAY    PICTURE X(2).                     SYNCRO
000220   10             SY00-LIPAY    PICTURE X(10).                    SYNCRO
000230   10             SY00-LICAPI   PICTURE X(15).                    SYNCRO
000240   10             SY00-FILLER   PICTURE X(3).                     SYNCRO
000250 FD                 YS-FICHIER                                    SYNCRO
000260      BLOCK              00000 RECORDS                            SYNCRO
000270      DATA RECORD                                                 SYNCRO
000280                    YS00                                          SYNCRO
000290           LABEL RECORD STANDARD.                                 SYNCRO
000300 01               YS00.                                           SYNCRO
000310   10             YS00-COPAY    PICTURE X(2).                     SYNCRO
000320   10             YS00-LIPAY    PICTURE X(10).                    SYNCRO
000330   10             YS00-LICAPI   PICTURE X(15).                    SYNCRO
000340   10             YS00-FILLER   PICTURE X(3).                     SYNCRO
000350 WORKING-STORAGE SECTION.                                         SYNCRO
000360 01               DEBUT-WSS.                                      SYNCRO
000370   05             FILLER        PICTURE X(7) VALUE                SYNCRO
000380                                'WORKING'.                        SYNCRO
000390   05             IK            PICTURE X.                        SYNCRO
000400 01               CONSTANTES-PAC.                                 SYNCRO
000410   05             FILLER        PICTURE X(60) VALUE               SYNCRO
000420     '0066 LBA22/07/97SYNCROTEST    15:13:14SYNCRO  BVAP22/07/1997SYNCRO
000430-    ''.                                                          SYNCRO
000440 01               PAC-CONSTANTES REDEFINES CONSTANTES-PAC.        SYNCRO
000450   05             NUGNA         PICTURE X(5).                     SYNCRO
000460   05             APPLI         PICTURE X(3).                     SYNCRO
000470   05             DATGN         PICTURE X(8).                     SYNCRO
000480   05             PROGR         PICTURE X(6).                     SYNCRO
000490   05             CODUTI        PICTURE X(8).                     SYNCRO
000500   05             TIMGN         PICTURE X(8).                     SYNCRO
000510   05             PROGE         PICTURE X(8).                     SYNCRO
000520   05             COBASE        PICTURE X(4).                     SYNCRO
000530   05             DATGNC        PICTURE X(10).                    SYNCRO
000540 01               DATCE.                                          SYNCRO
000550   05             CENTUR        PICTURE XX VALUE                  SYNCRO
000560                                '19'.                             SYNCRO
000570   05             DATOR.                                          SYNCRO
000580     10           DATOA         PICTURE XX.                       SYNCRO
000590     10           DATOM         PICTURE XX.                       SYNCRO
000600     10           DATOJ         PICTURE XX.                       SYNCRO
000610 01               VARIABLES-CONDITIONNELLES.                      SYNCRO
000620   05             VCF.                                            SYNCRO
000630     10           SY-CF.                                          SYNCRO
000640       15         SY-CF1        PICTURE X VALUE                   SYNCRO
000650                                '1'.                              SYNCRO
000660     10           YS-CF.                                          SYNCRO
000670       15         YS-CF1        PICTURE X VALUE                   SYNCRO
000680                                '1'.                              SYNCRO
000690   05             FT.                                             SYNCRO
000700     10           SY-FT         PICTURE X VALUE                   SYNCRO
000710                                '0'.                              SYNCRO
000720     10           YS-FT         PICTURE X VALUE                   SYNCRO
000730                                '0'.                              SYNCRO
000740 01               ZONES-CALCUL-CF.                                SYNCRO
000750   05             IND.                                            SYNCRO
000760     18           TIND1.                                          SYNCRO
000770       19         IND1          PICTURE X(002).                   SYNCRO
000780   05             SYIND.                                          SYNCRO
000790     10           SYIND1.                                         SYNCRO
000800       15         SY-IN-COPAY   PICTURE X(2).                     SYNCRO
000810   05             YSIND.                                          SYNCRO
000820     10           YSIND1.                                         SYNCRO
000830       15         YS-IN-COPAY   PICTURE X(2).                     SYNCRO
000840 01               COMPTEURS-FICHIERS COMPUTATIONAL-3.             SYNCRO
000850   05             5-SY00-CPTENR PICTURE S9(9) VALUE ZERO.         SYNCRO
000860   05             5-YS00-CPTENR PICTURE S9(9) VALUE ZERO.         SYNCRO
000870 PROCEDURE DIVISION.                                              SYNCRO
000880 N01.                                                             SYNCRO
000940 F01.                                                             SYNCRO
000950     EXIT.                                                        SYNCRO
000960 N01SY.                                                           SYNCRO
000980 F01SY.                                                           SYNCRO
000990     OPEN INPUT SY-FICHIER.                                       SYNCRO
001000 F01SY-FN.                                                        SYNCRO
001010     EXIT.                                                        SYNCRO
001020 N01YS.                                                           SYNCRO
001040 F01YS.                                                           SYNCRO
001050     OPEN INPUT YS-FICHIER.                                       SYNCRO
001060 F01YS-FN.                                                        SYNCRO
001070     EXIT.                                                        SYNCRO
001080 F01-FN.                                                          SYNCRO
001090     EXIT.                                                        SYNCRO
001110 F05.                                                             SYNCRO
001120     EXIT.                                                        SYNCRO
001130 N05.                                                             SYNCRO
001190 N05SY.                                                           SYNCRO
001210 F05SY.                                                           SYNCRO
001220     IF      SY-CF1  =  '1'                                       SYNCRO
001230         NEXT SENTENCE                                            SYNCRO
001240     ELSE                                                         SYNCRO
001250         GO TO F05SY-FN.                                          SYNCRO
001260 F05SY-10.                                                        SYNCRO
001270     READ SY-FICHIER AT END                                       SYNCRO
001280         MOVE 1 TO SY-FT                                          SYNCRO
001290         MOVE HIGH-VALUE TO SYIND                                 SYNCRO
001300         GO TO F05SY-FN.                                          SYNCRO
001310     MOVE SY00-COPAY TO SY-IN-COPAY.                              SYNCRO
001320     ADD 1 TO 5-SY00-CPTENR.                                      SYNCRO
001330 F05SY-FN.                                                        SYNCRO
001340     EXIT.                                                        SYNCRO
001350 N05YS.                                                           SYNCRO
001370 F05YS.                                                           SYNCRO
001380     IF      YS-CF1  =  '1'                                       SYNCRO
001390         NEXT SENTENCE                                            SYNCRO
001400     ELSE                                                         SYNCRO
001410         GO TO F05YS-FN.                                          SYNCRO
001420 F05YS-10.                                                        SYNCRO
001430     READ YS-FICHIER AT END                                       SYNCRO
001440         MOVE 1 TO YS-FT                                          SYNCRO
001450         MOVE HIGH-VALUE TO YSIND                                 SYNCRO
001460         GO TO F05YS-FN.                                          SYNCRO
001470     MOVE YS00-COPAY TO YS-IN-COPAY.                              SYNCRO
001480     ADD 1 TO 5-YS00-CPTENR.                                      SYNCRO
001490 F05YS-FN.                                                        SYNCRO
001500     EXIT.                                                        SYNCRO
001510 F05-FN.                                                          SYNCRO
001520     EXIT.                                                        SYNCRO
001530 N20.                                                             SYNCRO
001590 F20.                                                             SYNCRO
001600     IF      FT  =  ALL '1'                                       SYNCRO
001610         NEXT SENTENCE                                            SYNCRO
001620     ELSE                                                         SYNCRO
001630         GO TO F20-FN.                                            SYNCRO
001640 F20SY.                                                           SYNCRO
001650     CLOSE SY-FICHIER.                                            SYNCRO
001660 F20SY-FN.                                                        SYNCRO
001670     EXIT.                                                        SYNCRO
001680 F20YS.                                                           SYNCRO
001690     CLOSE YS-FICHIER.                                            SYNCRO
001700 F20YS-FN.                                                        SYNCRO
001710     EXIT.                                                        SYNCRO
001720 F2099. STOP RUN.                                                 SYNCRO
001730 F2099-FN.                                                        SYNCRO
001740     EXIT.                                                        SYNCRO
001750 F20-FN.                                                          SYNCRO
001760     EXIT.                                                        SYNCRO
001770 N24.                                                             SYNCRO
001830 F24.                                                             SYNCRO
001840     MOVE ZERO TO VCF                                             SYNCRO
001850     MOVE HIGH-VALUE TO IND.                                      SYNCRO
001860     IF      TIND1  >  SYIND                                      SYNCRO
001870         MOVE SYIND TO IND.                                       SYNCRO
001880     IF      TIND1  >  YSIND                                      SYNCRO
001890         MOVE YSIND TO IND.                                       SYNCRO
001900 F24SY.                                                           SYNCRO
001910     IF      SYIND1  =  IND1                                      SYNCRO
001920         MOVE 1 TO SY-CF1.                                        SYNCRO
001930 F24SY-FN.                                                        SYNCRO
001940     EXIT.                                                        SYNCRO
001950 F24YS.                                                           SYNCRO
001960     IF      YSIND1  =  IND1                                      SYNCRO
001970         MOVE 1 TO YS-CF1.                                        SYNCRO
001980 F24YS-FN.                                                        SYNCRO
001990     EXIT.                                                        SYNCRO
002000 F24-FN.                                                          SYNCRO
002010     EXIT.                                                        SYNCRO
002020 N71.                                                             P000
002080 F71.                                                             P000
002090     EXIT.                                                        P000
002100 N71BB.                                                           P000

002120 F71BB.                                                           P000
002130     IF      SY-CF1  =  '1'                                       P000
002140         AND YS-CF1  =  '1'                                       P010
002150             NEXT SENTENCE                                        P010
002160     ELSE                                                         P010
002170             GO TO F71BB-FN.                                      P010
002180     DISPLAY SY00-COPAY SY00-LIPAY YS00-LICAPI.                   P100
002190 F71BB-FN.                                                        P100
002200     EXIT.                                                        P100
002210 N71CC.                                                           P000
002230 F71CC.                                                           P000
002240     IF      SY-CF1  =  '1'                                       P000
002250         AND YS-CF1  =  ZERO                                      P010
002260             NEXT SENTENCE                                        P010
002270     ELSE                                                         P010
002280             GO TO F71CC-FN.                                      P010
002290     DISPLAY SY00-COPAY SY00-LIPAY                                P100
002300     ' CAPITAL INCONNUE'.                                         P110
002310 F71CC-FN.                                                        P110
002320     EXIT.                                                        P110
002330 N71DD.                                                           P000
002350 F71DD.                                                           P000
002360     IF      SY-CF1  =  ZERO AND YS-CF1  =                        P000
002370     '1'                                                          P010
002380         NEXT SENTENCE                                            P010
002390     ELSE                                                         P010
002400         GO TO F71DD-FN.                                          P010
002410     DISPLAY YS00-COPAY                                           P100
002420     ' PAYS INCONNU '                                             P110
002430     YS00-LICAPI.                                                 P120
002440 F71DD-FN.                                                        P120
002450     EXIT.                                                        P120
002460 F71-FN.                                                          P120
002470     EXIT.                                                        P120
002480 F9099-ITER-FN.                                                   SYNCRO
002490     GO TO F05.                                                   SYNCRO
