//(JOBCARD)   <=== FILL IN
//*
//      EXPORT SYMLIST=*
//         SET LWZMHLQ=(HLQ FOR LWZMAKE LOAD MOD)  <=== FILL IN
//         SET SAMPHLQ=(HLQ FOR SAMPLE07)          <=== FILL IN
//      JCLLIB ORDER=(&LWZMHLQ..CNTL)
//*
//ZMAKE   EXEC PGM=IKJEFT1B
//SYSEXEC   DD DISP=SHR,DSN=&SAMPHLQ..EXEC
//SYSTSIN   DD *,SYMBOLS=EXECSYS
CALL '&LWZMHLQ..LOADLIB(LWZMAKE)' '-t ALL' ASIS
//MAKEFILE  DD DISP=SHR,DSN=&SAMPHLQ..CNTL(MAKEFILE)
//LWZMTRC   DD SYSOUT=*
//LWZMRPT   DD SYSOUT=*
//SYSTSPRT  DD SYSOUT=*