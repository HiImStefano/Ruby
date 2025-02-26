class Order
  def initialize(name)
    @name = name
  end


end

def FlowerShop
  puts "Welcome to the Flower Shop"
  puts "1. Create Order"
  puts "2. View Flower Prices"
  puts "3. Exit"
  print "What would you like to do: "
  customerchoice = gets.chomp

  while customerchoice != 3
    if customerchoice == 1
      print "Can I get a name for the order: "
      customername = gets.chomp
      customerOrder = Order.new(customername)
    end
  end
end