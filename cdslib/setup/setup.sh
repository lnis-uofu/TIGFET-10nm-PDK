#!/bin/bash
# TIGFET10nm Open Source Predictive Process Design Kit
# Copyright (c) [2019] [Laboratory for NanoIntegrated Systems]
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its
# contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
###############################################################################

# Set the PDK_DIR variable to the root directory of the project

if [ -n "$1" ]; then
  PDK_DIR=$1
  echo "Using $PDK_DIR as PDK_DIR Directory"
else
  echo "Looking for PDK_DIR enviroment variable"
  if [ ! -n "$PDK_DIR" ]; then
    echo "Not found exiting "
    exit
  fi
fi

if [ ! -f ${PWD}/.cdsinit ]; then
  cp ${PDK_DIR}/cdslib/setup/cdsinit ${PWD}/.cdsinit
  echo "Copying .cdsinit"
fi

if [ ! -f ${PWD}/cds.lib ]; then
  cp ${PDK_DIR}/cdslib/setup/cds.lib ${PWD}/cds.lib
  echo "Copying cds.lib"
fi

if [ ! -f ${PWD}/.runset.calibre.drc ]; then
  cp ${PDK_DIR}/cdslib/setup/runset.calibre.drc ${PWD}/.runset.calibre.drc
  echo "Copying .runset.calibre.drc"
fi

if [ ! -f ${PWD}/.runset.calibre.lvs ]; then
  cp ${PDK_DIR}/cdslib/setup/runset.calibre.lvs ${PWD}/.runset.calibre.lvs
  echo "Copying .runset.calibre.lvs"
fi

if [ ! -f ${PWD}/.runset.calibre.pex ]; then
  cp ${PDK_DIR}/cdslib/setup/runset.calibre.pex ${PWD}/.runset.calibre.pex
  echo "Copying .runset.calibre.pex"
fi

export MGC_CALIBRE_DRC_RUNSET_FILE=./runsets/.runset.calibre.drc
export MGC_CALIBRE_LVS_RUNSET_FILE=./runsets/.runset.calibre.lvs
export MGC_CALIBRE_PEX_RUNSET_FILE=./runsets/.runset.calibre.pex
