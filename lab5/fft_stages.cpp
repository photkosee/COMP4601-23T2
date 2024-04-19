#include "fft_stages.h"
#include "math.h"

unsigned int reverse_bits(unsigned int input) {
	int i, rev = 0;

reverse_bits_loop:
	for (i = 0; i < M; i++) {
		rev = (rev << 1) | (input & 1);
		input = input >> 1;
	}
	return rev;
}

void bit_reverse(DTYPE X_R[SIZE], DTYPE X_I[SIZE],
		 DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE]) {
  unsigned int reversed;
  unsigned int i;
  DTYPE temp;

bit_reverse_loop:  
  for (int i = 0; i < SIZE; i++) {
	  reversed = reverse_bits(i); // Find the bit reversed index
		if (i <= reversed) {
			// Swap the real values
			temp = X_R[i];
			OUT_R[i] = X_R[reversed];
			OUT_R[reversed] = temp;

			// Swap the imaginary values
			temp = X_I[i];
			OUT_I[i] = X_I[reversed];
			OUT_I[reversed] = temp;
		}
	}
}

void fft_stage(int stage, DTYPE X_R[SIZE], DTYPE X_I[SIZE],
		     DTYPE Out_R[SIZE], DTYPE Out_I[SIZE]) {
  int DFTpts = 1 << stage;    // DFT = 2^stage = points in sub DFT
  int numBF = DFTpts / 2;     // Butterfly WIDTHS in sub-DFT

  DTYPE e = -6.283185307178 / DFTpts;
  DTYPE a = 0.0;
  // Perform butterflies for j-th stage
 butterfly_loop:
  for (int j = 0; j < numBF; j++) {
    DTYPE c = cos(a);
    DTYPE s = sin(a);
    a = a + e;
    // Compute butterflies that use same W**k
  dft_loop:
    for (int i = j; i < SIZE; i += DFTpts) {
      int i_lower = i + numBF; // index of lower point in butterfly
      DTYPE temp_R = X_R[i_lower] * c - X_I[i_lower] * s;
      DTYPE temp_I = X_I[i_lower] * c + X_R[i_lower] * s;
      Out_R[i_lower] = X_R[i] - temp_R;
      Out_I[i_lower] = X_I[i] - temp_I;
      Out_R[i] = X_R[i] + temp_R;
      Out_I[i] = X_I[i] + temp_I;
    }
  }
}
 
void fft_streaming(DTYPE X_R[SIZE], DTYPE X_I[SIZE], DTYPE OUT_R[SIZE], DTYPE OUT_I[SIZE])
{
  #pragma HLS dataflow
  DTYPE Stage1_R[SIZE], Stage1_I[SIZE],
    Stage2_R[SIZE], Stage2_I[SIZE],
    Stage3_R[SIZE], Stage3_I[SIZE],
    Stage4_R[SIZE], Stage4_I[SIZE],
    Stage5_R[SIZE], Stage5_I[SIZE],
    Stage6_R[SIZE], Stage6_I[SIZE],
    Stage7_R[SIZE], Stage7_I[SIZE],
    Stage8_R[SIZE], Stage8_I[SIZE],
    Stage9_R[SIZE], Stage9_I[SIZE],
    Stage10_R[SIZE], Stage10_I[SIZE];
  
  bit_reverse(X_R, X_I, Stage1_R, Stage1_I);
  fft_stage(1, Stage1_R, Stage1_I, Stage2_R, Stage2_I);
  fft_stage(2, Stage2_R, Stage2_I, Stage3_R, Stage3_I);
  fft_stage(3, Stage3_R, Stage3_I, Stage4_R, Stage4_I);
  fft_stage(4, Stage4_R, Stage4_I, Stage5_R, Stage5_I);
  fft_stage(5, Stage5_R, Stage5_I, Stage6_R, Stage6_I);
  fft_stage(6, Stage6_R, Stage6_I, Stage7_R, Stage7_I);
  fft_stage(7, Stage7_R, Stage7_I, Stage8_R, Stage8_I);
  fft_stage(8, Stage8_R, Stage8_I, Stage9_R, Stage9_I);
  fft_stage(9, Stage9_R, Stage9_I, Stage10_R, Stage10_I);
  fft_stage(10, Stage10_R, Stage10_I, OUT_R, OUT_I);
}
