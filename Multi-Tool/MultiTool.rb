
def tool_input(choice)
    case choice
    when 'Flower'
      load 'FlowerShop.rb'
      flowerShop
    else
      puts 'Not a choice'
    end
end

puts "Welcome to the Multi-Tool!"
tool_choice = 0
while tool_choice != 'Exit'
  puts "Multi-Tool Hub! Please Make your choice: "
  tool_input(tool_choice)
  tool_choice = gets.chomp()
end