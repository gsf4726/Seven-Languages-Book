Number div := Number getSlot("/")
Number / = method(n,
  if(n == 0, n, div(n))
  )

(10 / 0) println