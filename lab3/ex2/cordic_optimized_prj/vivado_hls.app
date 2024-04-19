<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="cordic_optimized_prj" top="cordic">
  <files>
    <file name="../../cordic_fixed-top.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="cordic_fixed.cpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    <file name="cordic.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="optimized" status="inactive"/>
    <solution name="unroll_2" status="inactive"/>
    <solution name="unroll_4" status="inactive"/>
    <solution name="unroll_8" status="inactive"/>
    <solution name="pipelined" status="inactive"/>
    <solution name="unroll_pipelined" status="inactive"/>
    <solution name="iteration_16" status="inactive"/>
    <solution name="iteration_12" status="inactive"/>
    <solution name="iteration_8" status="inactive"/>
    <solution name="unroll_complete" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
