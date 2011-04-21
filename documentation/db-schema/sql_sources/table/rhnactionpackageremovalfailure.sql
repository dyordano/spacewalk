-- created by Oraschemadoc Thu Apr 21 10:03:16 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNACTIONPACKAGEREMOVALFAILURE" 
   (	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"ACTION_ID" NUMBER NOT NULL ENABLE, 
	"NAME_ID" NUMBER NOT NULL ENABLE, 
	"EVR_ID" NUMBER NOT NULL ENABLE, 
	"CAPABILITY_ID" NUMBER NOT NULL ENABLE, 
	"FLAGS" NUMBER NOT NULL ENABLE, 
	"SUGGESTED" NUMBER, 
	"SENSE" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_APR_FAILURE_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEWALK"."RHNSERVER" ("ID") ENABLE, 
	 CONSTRAINT "RHN_APR_FAILURE_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEWALK"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_APR_FAILURE_NID_FK" FOREIGN KEY ("NAME_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGENAME" ("ID") ENABLE, 
	 CONSTRAINT "RHN_APR_FAILURE_EID_FK" FOREIGN KEY ("EVR_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGEEVR" ("ID") ENABLE, 
	 CONSTRAINT "RHN_APR_FAILURE_CAPID_FK" FOREIGN KEY ("CAPABILITY_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGECAPABILITY" ("ID") ENABLE, 
	 CONSTRAINT "RHN_APR_FAILURE_SUGGESTED_FK" FOREIGN KEY ("SUGGESTED")
	  REFERENCES "SPACEWALK"."RHNPACKAGENAME" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
