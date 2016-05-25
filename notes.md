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

 # def food_type_scrape
  #  doc = Nokogiri::HTML(open("http://ny.eater.com/maps/best-new-new-york-restaurants-heatmap"))
  #    food_type_array = doc.css("div.c-mapstack__category").text.strip.split("\n")
   #   food_type_array.each{|x| x.strip! if x.respond_to? :strip!}
   #   puts food_type_array.inspect
   #   food_type_array.delete("")
   #   food_type_array.delete("$$$$")

 #   @food_type_scrape ||= food_type_array.collect{|x| self.x}
#
 # end


#doc.search("body h2")[0].text = "\n1 Amada"
#body h2 span.c-mapstack__card-index).text  ----* gives me all the numbers on the list



#test.join("(").split("(")
# doc.css("div.c-mapstack__address").text


# so my index + 1 can print that text. I just need to delete the first part for the name. 
# so if index <9. delete first 2 characters. if 
#.delete(x[0]) in each would delete each first letter. 
#"eric".delete("eric"[0]).delete("eric"[1])

#Take the scrape part with all the h2 text and separate by the spaces in an array. Join.

#Then take the scrape for that number to use as the index - 1 for that array. And possibly all the others for the other information.
