#:name, :address,:location, :categories, :price_range, :hours, :more_business_information,  :phone_number

puts <<-DOC

  1. Ludlow Coffe Supply - Lower East Side - Under $10
     Coffee & Tea, Breakfast & Brunch
      
      Address: 176 Ludlow St New York, NY 10002
      Phone Number: (212) 777-7465
      Hours:

            Mon  8:00am - 8:00pm
            Tue  8:00am - 8:00pm  

 DOC           





  @spots.each_with_index(1) do |spot, x|
     puts "#{x}. #{spot.name} - #{spot.location} - #{spot.price_range}"
     puts       "#{spot.categories}\n"
      puts       "Address: #{spot.address}"
     puts       "Phone Number: #{spot.phone_number}"
    puts       "Hours: \n"
     puts              "#{spot.hours}"
     end  





     spot_1 = Spots.new
spot_1.name = "Ludlow Coffee Supply"
spot_1.location = "Lower East Side"
spot_1.address = "176 Ludlow St New York, NY 10002"
spot_1.categories = "Coffee & Tea, Breakfast & Brunch"
spot_1.price_range = "Under #$10"
spot_1.hours = "Mon 8:00am - 8:00pm"
spot_1.phone_number = "(212) 777-7465"
spot_1.more_business_information = "Test More Business Info!"

spot_1