#!/bin/tcsh

# Remind the user where they are...
echo "\nYour working directory is" $PWD "\n"
setenv OA_UNSUPPORTED_PLAT linux_rhel50_gcc44x
set CLS_LOCK_HARD_LINKS YES
setenv CDS_Netlisting_Mode "Analog"

setenv PDK_DIR "$(pwd)/TIGFET-10nm-PDK"

setenv MGC_CALIBRE_DRC_RUNSET_FILE "./.runset.calibre.drc"
setenv MGC_CALIBRE_LVS_RUNSET_FILE "./.runset.calibre.lvs"
setenv MGC_CALIBRE_PEX_RUNSET_FILE "./.runset.calibre.pex"

# Start Virtuoso
\virtuoso $argv
