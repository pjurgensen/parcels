require './lib/parcels'

@shipments = []

def shipper
  puts "Press 'n' to calculate the cost to ship your parcel"
  puts "Press 'l' for the list of your shipments"
  puts "Press 'x' to exit now"
  main_choice = gets.chomp

  if main_choice == 'n'
    puts "Please enter a name for this parcel:"
    parcel_title = gets.chomp
    add_parcel parcel_title
  elsif main_choice == 'l'
    puts "Here is a list of your shipments:"
    @shipments.each do |parcel|
      puts parcel.title + parcel.cost_to_ship + "\n"
    end
    puts "\n\n"
    shipper
  elsif main_choice == 'x'
    puts "We didn't want to help you anyway"
    puts "\n\n"
  else
    puts "Invalid response - moron"
    puts "\n"
    shipper
  end
end

def add_parcel(parcel_title)
  puts "Please enter length of #{parcel_title}:"
  length = gets.chomp.to_i
  puts "Please enter width of #{parcel_title}:"
  width = gets.chomp.to_i
  puts "Please enter height of #{parcel_title}:"
  height = gets.chomp.to_i
  puts "Please enter weight of #{parcel_title}:"
  weight = gets.chomp.to_i

  parcel_title = Parcel.new length, width, height, weight, parcel_title
  puts "The cost to ship #{parcel_title.title} is: #{parcel_title.cost_to_ship}. #{parcel_title.title} was added to your list of shipments"
  @shipments << parcel_title
  puts "\n\n"
  shipper
end

shipper
