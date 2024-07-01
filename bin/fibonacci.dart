void main() {
  int n = 20;
  List<int> fibonacciSeries = generateFibonacci(n);
  print("Fibonacci series with $n terms: $fibonacciSeries");
}

List<int> generateFibonacci(int n) {
  if (n <= 0) {
    return [];
  } else if (n == 1) {
    return [0];
  }

  List<int> series = [0, 1];
  for (int i = 2; i < n; i++) {
    series.add(series[i - 1] + series[i - 2]);
  }
  return series;
}
