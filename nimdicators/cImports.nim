import nimterop/cimport, os

echo currentSourcePath

const 
  baseDir = currentSourcePath.parentDir()/"source"

static:
  cDebug()




cCompile(baseDir/"tiamagamation.c")


cImport(baseDir/"indicators.h", recurse = true)

