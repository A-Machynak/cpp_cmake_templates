#include <benchmark/benchmark.h>
#include "core.h"

static void BM_ValueTest(benchmark::State& state) {
	for (auto _ : state) {
		// Random loop
		for (int i = 100000; i > 0; i--) {
			if (i == Core::Value) break;
		}
	}
}
// Register the function as a benchmark
BENCHMARK(BM_ValueTest);
