List myAverage := method(
  sum := 0
  foreach(self, i, sum = sum + i)
  sum
)

(list(1, 2, 3, 4, 5) myAverage) println