#!/bin/tcsh

# Remind the user where they are...
echo "\nYour working directory is" $PWD "\n"
setenv CDS_Netlisting_Mode "Analog"

setenv PDK_DIR "$PWD"

setenv MGC_CALIBRE_DRC_RUNSET_FILE "./.runset.calibre.drc"
setenv MGC_CALIBRE_LVS_RUNSET_FILE "./.runset.calibre.lvs"
setenv MGC_CALIBRE_PEX_RUNSET_FILE "./.runset.calibre.pex"
setenv MGC_HOME $mentor_dir/aok_cal_2021.2_37.20
set path=($path $MGC_HOME/bin)

# Start Virtuoso
\virtuoso &
