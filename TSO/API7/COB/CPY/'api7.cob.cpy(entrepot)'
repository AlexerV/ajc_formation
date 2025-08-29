      ******************************************************************
      * DCLGEN TABLE(ENTREPOT)                                         *
      *        LIBRARY(API7.COB.CPY(ENTREPOT))                         *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(W-)                                               *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE ENTREPOT TABLE
           ( ID_ENTREPOT                    CHAR(2) NOT NULL,
             DESIGNATION                    CHAR(20) NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE ENTREPOT                           *
      ******************************************************************
       01  DCLENTREPOT.
      *    *************************************************************
      *                       ID_ENTREPOT
           10 W-ID-ENTREPOT        PIC X(2).
      *    *************************************************************
      *                       DESIGNATION
           10 W-DESIGNATION        PIC X(20).
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  IENTREPOT.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 2 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 2       *
      ******************************************************************
