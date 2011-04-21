-- created by Oraschemadoc Thu Apr 21 10:03:27 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNPACKAGEFILE" 
   (	"PACKAGE_ID" NUMBER NOT NULL ENABLE, 
	"CAPABILITY_ID" NUMBER NOT NULL ENABLE, 
	"DEVICE" NUMBER NOT NULL ENABLE, 
	"INODE" NUMBER NOT NULL ENABLE, 
	"FILE_MODE" NUMBER NOT NULL ENABLE, 
	"USERNAME" VARCHAR2(32) NOT NULL ENABLE, 
	"GROUPNAME" VARCHAR2(32) NOT NULL ENABLE, 
	"RDEV" NUMBER NOT NULL ENABLE, 
	"FILE_SIZE" NUMBER NOT NULL ENABLE, 
	"MTIME" DATE NOT NULL ENABLE, 
	"CHECKSUM_ID" NUMBER, 
	"LINKTO" VARCHAR2(256), 
	"FLAGS" NUMBER NOT NULL ENABLE, 
	"VERIFYFLAGS" NUMBER NOT NULL ENABLE, 
	"LANG" VARCHAR2(32), 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_PACKAGE_FILE_PID_FK" FOREIGN KEY ("PACKAGE_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGE" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_PACKAGE_FILE_CID_FK" FOREIGN KEY ("CAPABILITY_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGECAPABILITY" ("ID") ENABLE, 
	 CONSTRAINT "RHN_PACKAGE_FILE_CHSUM_FK" FOREIGN KEY ("CHECKSUM_ID")
	  REFERENCES "SPACEWALK"."RHNCHECKSUM" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
