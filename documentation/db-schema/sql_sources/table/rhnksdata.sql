-- created by Oraschemadoc Thu Apr 21 10:03:25 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNKSDATA" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"KS_TYPE" VARCHAR2(8) NOT NULL ENABLE, 
	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"IS_ORG_DEFAULT" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"LABEL" VARCHAR2(64) NOT NULL ENABLE, 
	"COMMENTS" VARCHAR2(4000), 
	"ACTIVE" CHAR(1) DEFAULT ('Y') NOT NULL ENABLE, 
	"POSTLOG" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"PRELOG" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"KSCFG" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"COBBLER_ID" VARCHAR2(64), 
	"PRE" BLOB, 
	"POST" BLOB, 
	"NOCHROOT_POST" BLOB, 
	"PARTITION_DATA" BLOB, 
	"STATIC_DEVICE" VARCHAR2(32), 
	"KERNEL_PARAMS" VARCHAR2(128), 
	"VERBOSEUP2DATE" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"NONCHROOTPOST" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"NO_BASE" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"IGNORE_MISSING" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_KS_DEFAULT_CK" CHECK (is_org_default in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_KS_ACTIVE_CK" CHECK (active in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_KS_POST_LOG_CK" CHECK (postLog in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_KS_PRE_LOG_CK" CHECK (preLog in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_KS_CFG_SAVE_CK" CHECK (kscfg in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_KS_VERBOSE_UP2DATE_CK" CHECK (verboseup2date in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_KS_NONCHROOT_POST_CK" CHECK (nonchrootpost in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_KS_NOBASE_CK" CHECK (no_base in ( 'Y' , 'N' )) ENABLE, 
	 CONSTRAINT "RHN_KS_IGNORE_MISSING_CK" CHECK (ignore_missing in ( 'Y' , 'N' )) ENABLE, 
	 CONSTRAINT "RHN_KS_TYPE_CK" CHECK (ks_type in ('wizard','raw')) ENABLE, 
	 CONSTRAINT "RHN_KS_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_KS_OID_LABEL_UQ" UNIQUE ("ORG_ID", "LABEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_KS_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEWALK"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 LOB ("PRE") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) 
 LOB ("POST") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) 
 LOB ("NOCHROOT_POST") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) 
 LOB ("PARTITION_DATA") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) ENABLE ROW MOVEMENT 
 
/
