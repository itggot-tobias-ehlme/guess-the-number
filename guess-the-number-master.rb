def s
  sleep 1.2
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
  x = "Wake up, Neo."
  i = 0
  while i < x.length
    print x[i]
    sleep 0.1
    i += 1
  end
  s
  system('cls')
  x = "Teh Matrx habe you."
  i = 0
  while i < x.length
    print x[i]
    sleep 0.1
    i += 1
  end
  s
  system('cls')
  x = "Don't try to CTRL + C me boi, Follow the white rabbit."
  i = 0
  while i < x.length
    print x[i]
    sleep 0.1
    i += 1
  end
  s
  system('cls')
  x = "Knock, knock, Neo."
  i = 0
  while i < x.length
    print x[i]
    sleep 0.1
    i += 1
  end
  s
  exit
end

def leveluno
  puts "You have choosen level 1!"
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
  puts "You have choosen level 2!"
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
  puts "You have choosen level 3!"
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
