import nimterop/cimport, os

# compile with nim c -d:headerGit cImports.nim

echo currentSourcePath

const 
  baseDir = currentSourcePath.parentDir()/"source"

static:
  cDebug()


#static:
#  gitPull("https://github.com/TulipCharts/tulipindicators", outdir= baseDir)


cCompile(baseDir/"tiamagamation.c")


cImport(baseDir/"indicators.h", recurse = true)

