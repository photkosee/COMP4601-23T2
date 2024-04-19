<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="matrix_vector_proj" top="matrix_vector">
  <files>
    <file name="../../out.matrix_vector.gold.dat" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../matrix_vector_base-top.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="matrix_vector_base.c" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="solution1" status="inactive"/>
    <solution name="unroll_dot_product" status="inactive"/>
    <solution name="pipeline_dot_product" status="inactive"/>
    <solution name="unroll_data_loop" status="inactive"/>
    <solution name="pipeline_data_loop" status="inactive"/>
    <solution name="unroll_inner" status="inactive"/>
    <solution name="solution7" status="inactive"/>
    <solution name="solution8" status="inactive"/>
    <solution name="solution9" status="inactive"/>
    <solution name="solution10" status="inactive"/>
    <solution name="solution11" status="active"/>
    <solution name="solution12" status="inactive"/>
    <solution name="unroll_all" status="inactive"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation argv="">
    <SimFlow name="csim" ldflags="" mflags=""/>
  </Simulation>
</project>
