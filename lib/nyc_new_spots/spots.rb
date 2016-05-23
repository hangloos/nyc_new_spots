class NycNewSpots::Spots 

attr_accessor :name, :address, :food_type, :price_range, :hours, :more_business_information, :phone_number

  def self.today
    spot_1 = self.new
    spot_1.name = "Ludlow Coffee Supply"
    spot_1.address = "176 Ludlow St New York, NY 10002"
    spot_1.food_type = "Coffee & Tea, Breakfast & Brunch"
    spot_1.price_range = "Under $10"
    spot_1.hours = "Mon 8:00am - 8:00pm"
    spot_1.phone_number = "(212) 777-7465"
    spot_1.more_business_information = "Test More Business Info!"

    spot_2 = self.new
    spot_2.name = "Ludlow Coffee Supply"
    spot_2.address = "176 Ludlow St New York, NY 10002"
    spot_2.food_type = "Coffee & Tea, Breakfast & Brunch"
    spot_2.price_range = "Under $10"
    spot_2.hours = "Mon 8:00am - 8:00pm"
    spot_2.phone_number = "(212) 777-7465"
    spot_2.more_business_information = "Test More Business Info!"

    [spot_1,spot_2]
  end


  def self.scrape_yelp

    doc = Nokogiri::HTML(open("http://ny.eater.com/maps/best-new-new-york-restaurants-heatmap"))
      spot = self.new
      names_array = doc.search("h2").text
      names_array = names_array.chomp("Related Maps")
      new_array = names_array.split("\n")
      new_array.delete("")
      spot.name = new_array
binding.pry



  end

#doc.search("body h2")[0].text = "\n1 Amada"
#body h2 span.c-mapstack__card-index).text  ----* gives me all the numbers on the list

end

# so my index + 1 can print that text. I just need to delete the first part for the name. 
# so if index <9. delete first 2 characters. if 
#.delete(x[0]) in each would delete each first letter. 
#"eric".delete("eric"[0]).delete("eric"[1])

#Take the scrape part with all the h2 text and separate by the spaces in an array. Join.

#Then take the scrape for that number to use as the index - 1 for that array. And possibly all the others for the other information.
