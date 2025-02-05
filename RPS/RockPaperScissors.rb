playerVictories = 0
computerVictories = 0 

def PickedRock(playerChoice, computerChoice)
  if computerChoice == "Rock"
    print "Game is a tie"
    return 
  elsif computerChoice == "Paper"
    print "The Player Loses"
    return false
  else
    print "The Player Wins"
    return true
  end
end  

def PickedScissors(playerChoice, computerChoice)
  if computerChoice == "Scissors"
    print "Game is a tie"
    return 
  elsif computerChoice == "Rock"
    print "The Player Loses"
    return false
  else
    print "The Player Wins"
    return true
  end
end  

def PickedPaper(playerChoice, computerChoice)
  if computerChoice == "Paper"
    print "Game is a tie"
    return 
  elsif computerChoice == "Scissors"
    print "The Player Loses"
    return false
  else
    print "The Player Wins"
    return true
  end
end  


while playerVictories <= 2 
  playerNum = 9
  puts "\nPlease Enter your Decision!"
  puts "1. Rock"
  puts "2. Paper"
  puts "3. Scissors"
  print "What will you play: "

  computerNum = rand(3)
  if computerNum == 0
    computerChoice = "Rock"
  elsif computerNum == 1
    computerChoice = "Paper"
  elsif computerNum == 2
    computerChoice = "Scissors"
  end

  while playerNum > 2
    playerNum = gets.to_i
    modPlayerNum = playerNum - 1
    if modPlayerNum == 0
      puts "You picked Rock!"
      puts "The Computer picked #{computerChoice}"
      playerChoice = "Rock"
      playerWin = PickedRock(playerChoice,computerChoice)
      break
    elsif modPlayerNum == 1
      puts "You picked Paper"
      puts "The Computer picked #{computerChoice}"
      playerChoice = "Paper"
      playerWin = PickedPaper(playerChoice, computerChoice)
      break
    elsif modPlayerNum == 2
      puts "You picked Scissors"
      puts "The Computer picked #{computerChoice}"
      playerChoice = "Scissors"
      playerWin = PickedScissors(playerChoice,computerChoice)
      break
    else
      puts "Invalid Result"
      print "Please pick a new choice: "
    end
  end

  if playerWin == true
    playerVictories = playerVictories + 1
  elsif playerWin == false
    computerVictories = computerVictories + 1
  end

  puts "\nCurrent Score!"
  puts "Player Score: #{playerVictories}!"
  puts "Computer Score: #{computerVictories}!"
  if computerVictories == 3
    puts "The Computer Wins Try Again Next Time"
    break
  end

end