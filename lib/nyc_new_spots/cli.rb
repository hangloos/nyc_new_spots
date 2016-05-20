class NycNewSpots::CLI

def call
list_spots
more_information
goodbye
end


def list_spots
    puts "New Places in New York:"
    puts "\n"
    @spots = NycNewSpots::Spots.today
    @spots.each_with_index do |spot, x|
     puts "#{x+1}. #{spot.name} - #{spot.location} - #{spot.price_range}"
     puts       "#{spot.categories}"
     puts       "\n"
     puts       "Address: #{spot.address}"
     puts       "Phone Number: #{spot.phone_number}"
     puts       "Hours:"
     puts       "\n"
     puts              "#{spot.hours}"
     puts       "\n"
     puts       "\n"
     end
            
end


def more_information
  input = nil
  while input != "exit"
      puts "Enter the number of the place you want to see more information on. Enter list to see the places again. Exit when you want to leave."
      input = gets.strip.downcase  
    if input.to_i > 0
      spot_entry = @spots[input.to_i-1]
      puts "More Business Information:\n"
      puts "#{spot_entry.more_business_information}"
    elsif input == "list"
      list_spots
    else
      puts "List or exit"
    end
    end
end


def goodbye
  puts "Adios! Check back soon for the latest and greatest NYC has to offer!!"
end


end
        