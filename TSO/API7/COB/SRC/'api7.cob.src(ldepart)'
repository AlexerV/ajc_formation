000200 IDENTIFICATION DIVISION.                                         00020000
000300 PROGRAM-ID. LDEPART .                                            00030000
000400 ENVIRONMENT DIVISION.                                            00040000
000500 DATA DIVISION.                                                   00050000
000600 WORKING-STORAGE SECTION.                                         00060000
000700      EXEC SQL                                                    00070000
000800         INCLUDE SQLCA                                            00080000
000900      END-EXEC.                                                   00090000
001000*****                                                             00100000
001100      EXEC SQL                                                    00110000
001200         INCLUDE DEPART                                           00120000
001300      END-EXEC.                                                   00130000
001400******                                                            00140000
001500 01  W-PROGRAM-ID   PIC X(8)  VALUE 'LDEPART'.                    00150000
001600 01  W-SQLCODE      PIC +++9.                                     00160000
001700******                                                            00170000
001800******                                                            00180000
001900 PROCEDURE DIVISION.                                              00190000
002000 1000-LDEPART-DEB.                                                00200000
002100     DISPLAY 'DEBUT DU PROGRAMME '  W-PROGRAM-ID                  00210000
002200     PERFORM 6010-LEC-DEP-DEB                                     00220000
002300       THRU  6010-LEC-DEP-FIN.                                    00230000
002400     DISPLAY ' W-LIE  ' W-LIE .                                   00231000
002500     PERFORM 9990-FIN-NORMALE-DEB                                 00240000
002600       THRU  9990-FIN-NORMALE-FIN.                                00250000
002700 1000-LDEPART-FIN.                                                00260000
002800     EXIT.                                                        00270000
002900***************                                                   00280000
003000 6010-LEC-DEP-DEB.                                                00290000
003100     EXEC SQL                                                     00300000
003200     SELECT MAX(LIE)                                              00310000
003300         INTO :W-LIE                                              00320000
003400      FROM    API7.DEPARTEMENTS                                   00340000
003500      ;                                                           00352000
003600      END-EXEC.                                                   00353000
003700 6010-LEC-DEP-FIN.                                                00360000
003800      EXIT.                                                       00370000
003900************                                                      00380000
004000************                                                      00390000
004100  9990-FIN-NORMALE-DEB.                                           00400000
004200            DISPLAY 'FIN   DU PROGRAMME ' W-PROGRAM-ID.           00410000
004300       GOBACK.                                                    00420000
004400  9990-FIN-NORMALE-FIN.                                           00430000
004500       EXIT.                                                      00440000
004600*************                                                     00450000
004700  9999-FIN-ANORMALE-DEB.                                          00460000
004800       DISPLAY 'FIN ANORMALE  DU PROGRAMME ' W-PROGRAM-ID.        00470000
004900      GOBACK.                                                     00480000
005000   9999-FIN-ANORMALE-FIN.                                         00490000
005100       EXIT.                                                      00500000
