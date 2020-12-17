#!/bin/tcsh

# Remind the user where they are...
echo "\nYour working directory is" $PWD "\n"
setenv CDS_Netlisting_Mode "Analog"

setenv PDK_DIR "$PWD/TIGFET-10nm-PDK"

setenv MGC_CALIBRE_DRC_RUNSET_FILE "./.runset.calibre.drc"
setenv MGC_CALIBRE_LVS_RUNSET_FILE "./.runset.calibre.lvs"
setenv MGC_CALIBRE_PEX_RUNSET_FILE "./.runset.calibre.pex"

# Start Virtuoso
\virtuoso &
