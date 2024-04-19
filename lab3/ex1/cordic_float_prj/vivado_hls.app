<project xmlns="com.autoesl.autopilot.project" name="cordic_float_prj" top="cordic">
    <files>
        <file name="../../cordic-top.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
        <file name="cordic.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="cordic.cpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="float" status="inactive"/>
        <solution name="fixed_12" status="inactive"/>
        <solution name="fixed_16" status="inactive"/>
        <solution name="optimized" status="active"/>
    </solutions>
</project>

