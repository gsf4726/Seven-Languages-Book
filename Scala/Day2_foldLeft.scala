val list = List("one", "two", "three", "four")

val size = list.foldLeft(0)((acc, value) => acc + value.length)

println(size)