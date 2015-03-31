#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/teja/Documents/TAIGA/HLS/fifo_dequeue/solution1/.autopilot/db/a.g.bc ${1+"$@"}
