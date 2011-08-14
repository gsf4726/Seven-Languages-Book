number := Date now asNumber mod(100) floor +(1)
number println

guess := File standardInput readLine("Pick a number between 1 and 100: ") asNumber
lastOffBy := 100
while(guess != number,
  offBy := (number - guess) abs
  offBy println
  if(offBy > lastOffBy, temp := "colder", temp := "warmer")
  guess = File standardInput readLine("You're getting #{temp}, guess again: " interpolate) asNumber
  lastOffBy := offBy
  )
"You got it!" println