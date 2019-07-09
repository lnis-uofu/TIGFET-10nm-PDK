## TIGFET10nm Open Source Predictive Process Design Kit v1.0  [MIT License]

Copyright (c) [2019] [Laboratory for NanoIntegrated Systems]

This is physical design kit for TIGFET 10nm Silicon Nanowire Device. The design kit is derived using TCAD based device simulations and realistic assumptions made for largescale
production of TIGFET-based systems.


This kit consists of a SPICE model
and full custom physical design files including a Design Rule
Manual, a Design Rule Check, and a Layout Versus Schematic
decks for Calibre®. Repository also hosts implmentation of basic logic gates and Full Adder design using TIGFET devices

### TIGFET10nm PDK Directory Structure

cdslib/           Technology libraires for Cadence Virtuoso

calibre/          SVRF rules for Mentor Graphics Calibre

hspice/           Simulation models for Synopsys HSPICE

docs/             Documentation

For more detail about the key assumption made while designing this PDK please refer following publications
<Yet to publish on IEEE>

### Quick Design Kit Usage Instructions

  1) Change the environment variable $PDK_DIR in the file
     $PDK_DIR/cdslib/setup/setup.csh to reflect the FreePDK
     installation path.

  2) Source your setup scripts for Cadence Virtuoso, Mentor Graphics Calibre, and Synopsys HSPICE

  3) Change to the directory where you want to start Virtuoso and
     source the file $PDK_DIR/cdslib/setup/setup.csh.  Note that
     this script copies all of the required user files (.cdsinit,
     cds.lib, and Calibre runset files) to the current working directory
     if they do not already exist.

  4) Start Cadence Virtuoso ( % virtuoso &  for example )

***** In case of any doubts/questions/suggestions, pleae raise issue on GitHub or send email to pierre-emmanuel.gaillardon@utah.edu *****
