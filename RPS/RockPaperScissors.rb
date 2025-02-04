playerVictories = 0
computerVictories = 0 


while playerVictories != 3 || computerVictories != 3
  playerNum = 9
  puts "\nPlease Enter your Decision!"
  puts "1. Rock"
  puts "2. Paper"
  puts "3. Scissors"
  print "What will you play: "

  while playerNum > 2
    playerNum = gets.to_i
    modPlayerNum = playerNum - 1
    if playerNum == 0
      puts "You picked Rock!"
      playerChoice = "Rock"
      break
    elsif playerNum == 1
      puts "You picked Paper"
      playerChoice = "Paper"
      break
    elsif playerNum == 2
      puts "You picked Scissors"
      playerChoice = "Scissors"
      break
    else
      puts "Invalid Result"
      print "Please pick a new choice: "
    end
  end

  computerNum = rand(3)
  if computerNum == 0
    puts "The Computer picked Rock!"
    computerChoice = "Rock"
  elsif computerNum == 1
    puts "The Computer picked Paper"
    computerChoice = "Paper"
  elsif computerNum == 2
    puts "The Computer picked Scissors"
    computerChoice = "Scissors"
  end

end