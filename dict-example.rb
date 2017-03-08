def level
  grades = {"Tobbe" => 5, "Bjorn" => 4}
  puts "Please choose a name, either Tobbe or Bjorn"
  name = gets.chomp
  if name == "Tobbe"
    puts "Tobbe has a score of " + grades["Tobbe"]
  end
end
p level
