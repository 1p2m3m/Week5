puts "Welcome to the NUMBERS GAME!"
print "What is your name? > "
name = gets.chomp

random_number = rand(0..10)
print "Hello #{name}, Plaese guess a number between 0 - 10 > "

winner = false
while winner == false
  guess = gets.chomp.to_i

  if guess > 10
    puts "Please enter a number 10 or lower"
    print "Try again > "
  elsif guess > random_number
    puts "Your guess is too high."
    print "Try again > "
  elsif guess < 0
    puts "Please keep the number positive."
    print "Try again > "
  elsif guess < random_number
    puts "Your guess is too low"
    print "Try again > "
  else
    puts "Good job, #{name} you won!"
    winner = true
  end
end
