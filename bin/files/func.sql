--------------------------------------------------------
--  File created - Thursday-April-12-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FUNCIONARIOS
--------------------------------------------------------

  CREATE TABLE "HED"."FUNCIONARIOS" 
   (	"ID" NUMBER(5,0), 
	"CPF" NUMBER(11,0), 
	"NOME" CHAR(100 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"PROF" CHAR(50 BYTE), 
	"SALARIO" NUMBER(8,2), 
	"CAD_DATA" DATE DEFAULT SYSDATE, 
	"TELE" NUMBER(11,0), 
	"FOTO" BLOB, 
	"NASC_DATA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("FOTO") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Index PK_FUNCIONARIOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "HED"."PK_FUNCIONARIOS" ON "HED"."FUNCIONARIOS" ("ID", "CPF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FUNCIONARIOS
--------------------------------------------------------

  ALTER TABLE "HED"."FUNCIONARIOS" ADD CONSTRAINT "PK_FUNCIONARIOS" PRIMARY KEY ("ID", "CPF")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HED"."FUNCIONARIOS" MODIFY ("NOME" NOT NULL ENABLE);