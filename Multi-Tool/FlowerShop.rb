module FlowerPrices
  ROSEPRICE = 1.25
  SUNFLOWERPRICE = 1.00
  LAVENDERPRICE = 2.40
  BABYSBREATHEPRICE = 0.75
end

class Order
  def initialize(name)
    @name = name
  end


end

def flowerShop
  customerchoice = 0
  while customerchoice != '3'
  customerchoice = 0
  puts "Welcome to the Flower Shop"
  puts "1. Create Order"
  puts "2. View Flower Prices"
  puts "3. Exit"
  print "What would you like to do: "
  customerchoice = gets.chomp

    if customerchoice == '1'
      print "Can I get a name for the order: "
      customername = gets.chomp
      customerOrder = Order.new(customername)
      customerOrderChoice = '0'
        puts "1. Add Flower"
        puts "2. View Order Price"
        puts 
        print "What would like to do with your order: "
      
    elsif customerchoice == '2'
      puts "Price per flower: "
      puts "Rose: #{FlowerPrices::ROSEPRICE}"
      puts "Sunflower: #{FlowerPrices::SUNFLOWERPRICE}"
      puts "Lavender: #{FlowerPrices::LAVENDERPRICE}"
      puts "Babys-Breathe: #{FlowerPrices::BABYSBREATHEPRICE}"
    end
  end
  return
end