----------------------------------------------------------------------- 00125200
--CREATE THE V8 SAMPLE PLAN_TABLE.                                      00125400
                                                                        00126000
  CREATE TABLE PLAN_TABLE                                               00128000
        ( QUERYNO            INTEGER      NOT NULL,                     00130000
          QBLOCKNO           SMALLINT     NOT NULL,                     00138000
          APPLNAME           CHAR(8)      NOT NULL,                     00146000
          PROGNAME           VARCHAR(128) NOT NULL,                     00154000
          PLANNO             SMALLINT     NOT NULL,                     00162000
          METHOD             SMALLINT     NOT NULL,                     00170000
          CREATOR            VARCHAR(128) NOT NULL,                     00178000
          TNAME              VARCHAR(128) NOT NULL,                     00186000
          TABNO              SMALLINT     NOT NULL,                     00194000
          ACCESSTYPE         CHAR(2)      NOT NULL,                     00202000
          MATCHCOLS          SMALLINT     NOT NULL,                     00210000
          ACCESSCREATOR      VARCHAR(128)      NOT NULL,                00218000
          ACCESSNAME         VARCHAR(128)     NOT NULL,                 00226000
          INDEXONLY          CHAR(1)      NOT NULL,                     00234000
          SORTN_UNIQ         CHAR(1)      NOT NULL,                     00242000
          SORTN_JOIN         CHAR(1)      NOT NULL,                     00250000
          SORTN_ORDERBY      CHAR(1)      NOT NULL,                     00258000
          SORTN_GROUPBY      CHAR(1)      NOT NULL,                     00266000
          SORTC_UNIQ         CHAR(1)      NOT NULL,                     00274000
          SORTC_JOIN         CHAR(1)      NOT NULL,                     00282000
          SORTC_ORDERBY      CHAR(1)      NOT NULL,                     00290000
          SORTC_GROUPBY      CHAR(1)      NOT NULL,                     00298000
          TSLOCKMODE         CHAR(3)      NOT NULL,                     00306000
          TIMESTAMP          CHAR(16)     NOT NULL,                     00314000
          REMARKS            VARCHAR(762) NOT NULL,                     00322000
          PREFETCH           CHAR(1)      NOT NULL WITH DEFAULT,        00330000
          COLUMN_FN_EVAL     CHAR(1)      NOT NULL WITH DEFAULT,        00338000
          MIXOPSEQ           SMALLINT     NOT NULL WITH DEFAULT,        00346000
          VERSION            VARCHAR(64)  NOT NULL WITH DEFAULT,        00354000
          COLLID             VARCHAR(128) NOT NULL WITH DEFAULT,        00362000
          ACCESS_DEGREE      SMALLINT,                                  00370000
          ACCESS_PGROUP_ID   SMALLINT,                                  00378000
          JOIN_DEGREE        SMALLINT,                                  00386000
          JOIN_PGROUP_ID     SMALLINT,                                  00394000
          SORTC_PGROUP_ID    SMALLINT,                                  00402000
          SORTN_PGROUP_ID    SMALLINT,                                  00410000
          PARALLELISM_MODE   CHAR(1),                                   00418000
          MERGE_JOIN_COLS    SMALLINT,                                  00426000
          CORRELATION_NAME   VARCHAR(128),                              00434000
          PAGE_RANGE         CHAR(1)      NOT NULL WITH DEFAULT,        00442000
          JOIN_TYPE          CHAR(1)      NOT NULL WITH DEFAULT,        00450000
          GROUP_MEMBER       CHAR(8)      NOT NULL WITH DEFAULT,        00458000
          IBM_SERVICE_DATA   VARCHAR(254) FOR BIT DATA                  00466000
                                            NOT NULL WITH DEFAULT,      00470000
          WHEN_OPTIMIZE      CHAR(1)      NOT NULL WITH DEFAULT,        00474000
          QBLOCK_TYPE        CHAR(6)      NOT NULL WITH DEFAULT,        00483000
          BIND_TIME          TIMESTAMP    NOT NULL WITH DEFAULT,        00492000
          OPTHINT            VARCHAR(128) NOT NULL WITH DEFAULT,        00501000
          HINT_USED          VARCHAR(128) NOT NULL WITH DEFAULT,        00510000
          PRIMARY_ACCESSTYPE CHAR(1)      NOT NULL WITH DEFAULT,        00519000
          PARENT_QBLOCKNO    SMALLINT     NOT NULL WITH DEFAULT,        00528000
          TABLE_TYPE         CHAR(1),                                   00537000
          TABLE_ENCODE       CHAR(1)      NOT NULL WITH DEFAULT,        00538000
          TABLE_SCCSID       SMALLINT     NOT NULL WITH DEFAULT,        00539000
          TABLE_MCCSID       SMALLINT     NOT NULL WITH DEFAULT,        00540000
          TABLE_DCCSID       SMALLINT     NOT NULL WITH DEFAULT,        00542000
          ROUTINE_ID         INTEGER      NOT NULL WITH DEFAULT,        00544401
          CTEREF             SMALLINT     NOT NULL WITH DEFAULT,        00544901
          STMTTOKEN          VARCHAR(240)                               00545401
        )                                                               00546000
      IN DBFORM81.MPFXX;                                                00555001
                                                                        00573000
                                                                        00574000
  COMMIT;                                                               00626000
