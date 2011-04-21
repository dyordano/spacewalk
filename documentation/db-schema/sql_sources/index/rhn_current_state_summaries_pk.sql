-- created by Oraschemadoc Thu Apr 21 10:03:53 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "SPACEWALK"."RHN_CURRENT_STATE_SUMMARIES_PK" ON "SPACEWALK"."RHN_CURRENT_STATE_SUMMARIES" ("CUSTOMER_ID", "TEMPLATE_ID", "STATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 
/
