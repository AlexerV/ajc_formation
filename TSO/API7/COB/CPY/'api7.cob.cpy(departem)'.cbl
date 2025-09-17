      ******************************************************************
      * DCLGEN TABLE(DEPARTEMENT)                                      *
      *        LIBRARY(API7.COB.CPY(DEPARTEM))                         *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(W-)                                               *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE DEPARTEMENT TABLE
           ( NOD                            CHAR(3) NOT NULL,
             NDE                            CHAR(6) NOT NULL,
             LIE                            CHAR(4) NOT NULL,
             CHE                            CHAR(3) NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE DEPARTEMENT                        *
      ******************************************************************
       01  DCLDEPARTEMENT.
      *    *************************************************************
      *                       NOD
           10 W-NOD                PIC X(3).
      *    *************************************************************
      *                       NDE
           10 W-NDE                PIC X(6).
      *    *************************************************************
      *                       LIE
           10 W-LIE                PIC X(4).
      *    *************************************************************
      *                       CHE
           10 W-CHE                PIC X(3).
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  IDEPARTEMENT.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 4 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 4       *
      ******************************************************************
