"Day 2 Self-Study: Fibonacci sequence" println
"" println
fib := method(n, 
  x := 0
  y := 1
  i := 0
  while(i < n,
    t := x
    x := y
    y := t + y
    i := i + 1
  )
  x
  
)

fib(1) println
fib(4) println
fib(10) println
