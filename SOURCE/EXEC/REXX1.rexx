/* REXX */
SAY 'REXX1'
ADDRESS ISPEXEC "LIBDEF ISPLLIB DATASET ID('LWZM010.LOADLIB')"
INVAR = "123"
ADDRESS ISPEXEC "VPUT (INVAR)"
ADDRESS ISPEXEC "SELECT PGM(STUDY3)"
ADDRESS ISPEXEC "VGET (OUTVAR)"
SAY OUTVAR
ADDRESS ISPEXEC "LIBDEF ISPLLIB"
EXIT 0
