       PROCESS SIZE(640K)
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CDEPART.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
            EXEC SQL
               INCLUDE SQLCA
            END-EXEC.
      *****
            EXEC SQL
               INCLUDE DEPART
            END-EXEC.
      ******
      ****     DECLARE CURSEUR_DEPART CURSOR FOR
      *****
            EXEC SQL
               DECLARE CURSEUR-DEPART CURSOR  FOR
                SELECT NOD
                 FROM    API7.DEPARTEMENT
            END-EXEC.
      ******
       01  W-PROGRAM-ID   PIC X(8)  VALUE 'CDEPART'.
       01  W-SQLCODE      PIC +++9.
      ******
      ******
       PROCEDURE DIVISION.
       1000-CDEPART-DEB.
           DISPLAY 'DEBUT DU PROGRAMME '  W-PROGRAM-ID
           EXEC SQL
             OPEN CURSEUR-DEPART
           END-EXEC.
            MOVE  SQLCODE   TO W-SQLCODE.
            DISPLAY 'OPEN CURSEUR  SQLCODE  ' W-SQLCODE .
      *****************
           PERFORM 6010-LEC-DEP-DEB
             THRU  6010-LEC-DEP-FIN.
      *****************
      *****************
           PERFORM 2000-BOUCLE-DEB
             THRU  2000-BOUCLE-FIN
               UNTIL SQLCODE NOT = ZERO.
      *****************
           DISPLAY '****************************************'.
           DISPLAY ' W-LIE  ' W-LIE .
           DISPLAY '****************************************'.
           EXEC SQL
            CLOSE CURSEUR-DEPART
           END-EXEC.
           PERFORM 9990-FIN-NORMALE-DEB
             THRU  9990-FIN-NORMALE-FIN.
       1000-CDEPART-FIN.
           EXIT.
      ***************
       2000-BOUCLE-DEB.
               MOVE ZERO TO SQLCODE.
            PERFORM  6020-LEC-DEP-DEB
               THRU 6020-LEC-DEP-FIN .
            IF SQLCODE = ZERO
               DISPLAY 'W-NOD  : ' W-NOD
            ELSE
               MOVE  SQLCODE   TO W-SQLCODE
               DISPLAY ' FETCH SQLCODE  ' W-SQLCODE .
       2000-BOUCLE-FIN.
            EXIT.
      ***************
       6010-LEC-DEP-DEB.
           EXIT.
       6010-LEC-DEP-FIN.
            EXIT.
       6020-LEC-DEP-FIN2.
           EXEC SQL
           SELECT MAX(LIE)
               INTO :W-LIE
            FROM    API8.DEPARTEMENTS

            END-EXEC.
            MOVE  SQLCODE   TO W-SQLCODE.
            DISPLAY ' SQLCODE  ' W-SQLCODE .
       6010-LEC-DEP-FIN2.
            EXIT.
       6020-LEC-DEP-DEB.
           EXEC SQL
             FETCH CURSEUR-DEPART
               INTO :W-NOD
            END-EXEC.
       6020-LEC-DEP-FIN.
            EXIT.
      ************
      ************
        9990-FIN-NORMALE-DEB.
                  DISPLAY 'FIN   DU PROGRAMME ' W-PROGRAM-ID.
             GOBACK.
        9990-FIN-NORMALE-FIN.
             EXIT.
      *************
        9999-FIN-ANORMALE-DEB.
             DISPLAY 'FIN ANORMALE  DU PROGRAMME ' W-PROGRAM-ID.
            GOBACK.
         9999-FIN-ANORMALE-FIN.
             EXIT.






