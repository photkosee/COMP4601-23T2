open_project fft_stages.proj -reset
add_files fft_stages.cpp
add_files fft_stages.h
set_top fft_streaming
open_solution "solution1" -reset
set_part {xqzu5ev-ffrb900-1-i}
create_clock -period 10
csynth_design
exit
