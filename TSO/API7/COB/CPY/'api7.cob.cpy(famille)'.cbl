      ******************************************************************
      * DCLGEN TABLE(FAMILLE)                                          *
      *        LIBRARY(API7.COB.CPY(FAMILLE))                          *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(W-)                                               *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE FAMILLE TABLE
           ( ID_FAMILLE                     CHAR(2) NOT NULL,
             DESIGNATION                    CHAR(20) NOT NULL,
             ID_ENTREPOT                    CHAR(2) NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE FAMILLE                            *
      ******************************************************************
       01  DCLFAMILLE.
      *    *************************************************************
      *                       ID_FAMILLE
           10 W-ID-FAMILLE         PIC X(2).
      *    *************************************************************
      *                       DESIGNATION
           10 W-DESIGNATION        PIC X(20).
      *    *************************************************************
      *                       ID_ENTREPOT
           10 W-ID-ENTREPOT        PIC X(2).
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  IFAMILLE.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 3 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 3       *
      ******************************************************************
