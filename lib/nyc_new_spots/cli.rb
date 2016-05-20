class NycNewSpots::CLI

def call
list_spots
more_information
goodbye
end


def list_spots
  puts "New Places in New York:"
  puts "1. Eric Test"
  puts "2. Molly test"
    #@spots = NycNewSpots::Spots.today
    #@spots.each_with_index(1) do |spot, x|
     # puts "#{x}. #{spot.name} - #{spot.location} - #{spot.price_range}"
     # puts       "#{spot.categories}\n"
      #puts       "Address: #{spot.address}"
    #  puts       "Phone Number: #{spot.phone_number}"
    #  puts       "Hours: \n"
     # puts              "#{spot.hours}"
     # end   
end


def more_information
  input = nil
  while input != "exit"
    puts "Enter the number of the place you want to see more information on. Enter list to see the places again. Enter page 2 etc to see another page. Exit when you want to leave."
  input = gets.strip.downcase  
  if input == "1"
    puts "1. Eric Test"
  elsif input == "2"
    puts "2. Molly test"
  elsif input == "list"
    puts "New Places in New York:"
    puts "1. Eric Test"
    puts "2. Molly test"
  else
      puts "List or exit"
    end
end




  puts "More Business Information:\n"
  #puts "#{spot.more_business_information}"
end


def goodbye
  puts "Adios! Check back soon for the latest and greatest NYC has to offer!!"
end


end
        