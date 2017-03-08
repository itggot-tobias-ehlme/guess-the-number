def s
  sleep 1.2
end

def welcome
  puts "Welcome to Guess the number!"
  puts "Please choose difficulty!"
  difficulty
end

def difficulty
  running = true
  while running
    input = gets.to_i
    if input == 1
      leveluno
    end
    if input == 2
      leveldos
    end
    if input == 3
      leveltres
    end
  end
end

def leveluno

  puts "Guess the secret number! (1-10)"
  puts "You have 5 tries"
  tries = 5
  secret = rand(1..10)

  running = true
  while running
    input = gets.to_i
    if tries = 0
      puts "You lost, die"
      exit
    if input > secret
      tries -= 1
      puts "Your number is greater than the secret number"
      puts "Wrong number guess again!"
      print "You have "
      print tries
      print " tries left!"
    else
      tries -= 1
      puts "Your number is less than the secret number"
      puts "Wrong number guess again!"
      print "You have "
      print tries
      print " tries left"
    end

    if input == secret
      puts "Gz you have found the number!"
      exit

        tries -= 1
        puts "Your number is greater than the secret number"
        puts "Wrong number guess again!"
        print "You have "
        print tries
        puts " tries left!"
      else
        tries -= 1
        puts "Your number is less than the secret number"
        puts "Wrong number guess again!"
        print "You have "
        print tries
        puts " tries left!"
      end
    end
  end

def leveldos
  puts "hej"
end

def leveltres
  puts "hej!"
end
welcome
