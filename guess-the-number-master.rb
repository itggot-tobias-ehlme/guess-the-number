def s
  sleep 1.2
end

def egg(string)
  x = rand(0.05..0.09)
  i = 0
  while i < string.length
    print string[i]
    sleep x
    i += 1
  end
end

def welcome
  system('cls')
  puts "Welcome to Guess the number!"
  puts "Please choose difficulty!"
  puts "::[1]:: Level One, (1-10)"
  puts "::[2]:: Level Two, (1-15)"
  puts "::[3]:: Level Three, (1-20)"
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

def endgame
  system('cls')
  egg("Wake up Neo.")
  s
  system('cls')
  egg("The Matrix has you.")
  s
  system('cls')
  egg("Follow the white rabbit.")
  s
  system('cls')
  egg("Knock, Knock, Neo.")
  s
  exit
end

def leveluno
  puts "You have chosen level 1!"
  puts "Guess the secret number from 1-10"
  puts "You have 5 tries"
  secret = rand(1..10)
  tries = 5
  running = true
  while running
    input = gets.to_i
    if input > secret
      tries -= 1
      puts "#{input} is higher than the secret number"
      puts "Guess again!"
      puts "You have #{tries} tries left"
    end
    if input < secret
      tries -= 1
      puts "#{input} is lower than the secret number"
      puts "Guess again!"
      puts "You have #{tries} tries left"
    end
    if tries == 0
    endgame
    end
    if input == secret
      puts "Gz you have found the number!"
      exit
    end
  end
end

def leveldos
  puts "You have chosen level 2!"
  puts "Guess the secret number from 1-15"
  puts "You have 5 tries"
  secret = rand(1..15)
  tries = 5
  running = true
  while running
    input = gets.to_i
    if input > secret
      tries -= 1
      puts "#{input} is higher than the secret number"
      puts "Guess again!"
      puts "You have #{tries} tries left"
    end
    if input < secret
      tries -= 1
      puts "#{input} is lower than the secret number"
      puts "Guess again!"
      puts "You have #{tries} tries left"
    end
    if tries == 0
    endgame
    end
    if input == secret
      puts "Gz you have found the number!"
      exit
    end
  end
end

def leveltres
  puts "You have chosen level 3!"
  puts "Guess the secret number from 1-20"
  puts "You have 5 tries"
  secret = rand(1..20)
  tries = 5
  running = true
  while running
    input = gets.to_i
    if input > secret
      tries -= 1
      puts "#{input} is higher than the secret number"
      puts "Guess again!"
      puts "You have #{tries} tries left"
    end
    if input < secret
      tries -= 1
      puts "#{input} is lower than the secret number"
      puts "Guess again!"
      puts "You have #{tries} tries left"
    end
    if tries == 0
    endgame
    end
    if input == secret
      puts "Gz you have found the number!"
      exit
    end
  end
end

welcome
