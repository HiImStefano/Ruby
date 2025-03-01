
def tool_input(choice)
    case choice
    when 'Flower'
      load 'FlowerShop.rb'
      flowerShop
    else
      puts 'Not a choice'
    end
end


puts "Welcome to the Multi-Tool! What would you like to do: "
tool_choice = gets.chomp()
while tool_choice != 'Exit'
  tool_input(tool_choice)
  tool_choice = gets.chomp()
end