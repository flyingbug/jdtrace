#!/usr/bin/bash

mkdir jdtrace_1.1.0
mkdir jdtrace_1.1.0/lib
cp ../src/scripts/agent-properties ../src/scripts/check_for_dtrace_provider.sh ../src/scripts/gettargethost ../src/scripts/jdtrace ../src/scripts/jdtrace.properties jdtrace_1.1.0
cp ../lib/asm-5.0_BETA.jar ../lib/asm-commons-5.0_BETA.jar ../lib/asm-util-5.0_BETA.jar ../lib/jdtrace.jar ../lib/jdtraceprov.jar ../lib/provider.jar ../lib/Instrumentationagent.jar jdtrace_1.1.0/lib
cp -r ../src/java/src/net/java/jdtrace/client/Jdtrace.class jdtrace_1.1.0/lib
chmod a+x jdtrace_1.1.0/jdtrace
tar cvf jdtrace_1.1.0.tar jdtrace_1.1.0/
gzip jdtrace_1.1.0.tar
rm -r jdtrace_1.1.0
