#Day1.rb
#Ruby - Chapter 2, Day 1 Self-Study

puts "Task: Print the string \"Hello, world\"."
puts "Hello, world."
print "Task Complete!\n\n"

puts "Task: For the string \"Hello, Ruby,\" find the index of the word \"Ruby.\""
puts "Hello, Ruby".index('Ruby')
print "Task Complete!\n\n"

puts "Task: Print your name ten times"
10.times do
  print "Greg\n"
end
print "Task Complete!\n\n"

puts "Print the string \"This is sentence number 1,\" where the number 1 changes from 1 to 10"
1.upto(10) {|x| print "This is sentence number #{x}\n"}
print "End task\n\n"

puts "Task: Run a Ruby program from a file."
puts "duh!"
print "Task Complete!\n\n"

print "Bonus: Pick a number game.\n"
minNumber = 1
maxNumber = 10
actual = minNumber + rand(maxNumber)
print "Task: Pick a number between #{minNumber} and #{maxNumber}: "
guess = gets.to_i
until guess == actual
  if guess < actual
    print "Sorry, too low. Guess again: "
  elsif guess > actual
    print "Sorry, too high. Guess again: "
  end
  guess = gets.to_i
end
print "Success! It was #{actual}\n"
print "Task Complete!\n\n"