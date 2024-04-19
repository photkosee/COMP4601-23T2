open_project fft_sw.proj -reset
add_files fft_sw.cpp
add_files fft_sw.h

set_top fft

open_solution "solution1" -reset

set_part {xqzu5ev-ffrb900-1-i}

create_clock -period 10

csynth_design
exit
