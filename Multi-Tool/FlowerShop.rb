module FlowerPrices
  ROSEPRICE = 1.25
  SUNFLOWERPRICE = 1.00
  LAVENDERPRICE = 2.40
  BABYSBREATHEPRICE = 0.75
  ROSE = 'Rose'
  SUNFLOWER = 'Sunflower'
  LAVENDER = 'Lavender'
  BABYSBREATHE = 'Babys Breathe'
end

class Order
  def initialize(name)
    @name = name
    @cost = 0.00
    @vase = []
  end

  def addFlower(choice, customerOrderObj)
    if choice == '1'
      @vase.push(FlowerPrices::ROSE)
      @cost += FlowerPrices::ROSEPRICE
      puts "Rose Added"
    elsif choice == '2'
      @vase.push(FlowerPrices::SUNFLOWER)
      @cost += FlowerPrices::SUNFLOWERPRICE
    elsif choice == '3'
      @vase.push(FlowerPrices::LAVENDER)
      @cost += FlowerPrices::LAVENDERPRICE
    elsif choice == '4'
      @vase.push(FlowerPrices::BABYSBREATHE)
      @cost += FlowerPrices::BABYSBREATHEPRICE
    else
      return "Not a Choice"
    end

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
        puts "3. Check Out"
        print "What would like to do with your order: "
        customerOrderChoice = gets.chomp
        while customerOrderChoice != '3'
          flowerChoice = '0'
          if customerOrderChoice = '1'
            puts "1. Rose: #{FlowerPrices::ROSEPRICE}"
            puts "2. Sunflower: #{FlowerPrices::SUNFLOWERPRICE}"
            puts "3. Lavender: #{FlowerPrices::LAVENDERPRICE}"
            puts "4. Babys-Breathe: #{FlowerPrices::BABYSBREATHEPRICE}"
            print "What Flower would you like to add: "
            flowerChoice = gets.chomp
            addFlower(flowerChoice, customerOrder)
          end0
        end
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