class NycNewSpots::CLI

  def call
    list_spots
    more_information
    goodbye
  end


  def list_spots
    puts "New Places in New York:"
    puts "\n"
    @spots = NycNewSpots::Spots.scrape_eater
      @spots.each_with_index do |spot, index|
      puts <<-DOC
     #{index+1}.   #{spot.name} - Food Type: #{spot.food_type}
      \n
      Address & Phone Number: #{spot.address_phone_number}
              \n
      DOC
    end
              
  end


  def more_information
    input = nil
      while input != "exit"
        puts "\n"
        puts "Enter the name of the place you want to see more information on. Enter list to see the places again. Exit when you want to leave."
        input = gets.strip.downcase  
      if input == "list"
        list_spots
      elsif input.to_i == 0
          puts "\n"
          puts"\n"
          NycNewSpots::Spots.more_information(input.to_s)
      else
        puts "List, Restaurant Name or Exit"
      end
      end
  end


  def goodbye
    puts "Adios! Check back soon for the latest and greatest NYC has to offer!!"
  end


end
        