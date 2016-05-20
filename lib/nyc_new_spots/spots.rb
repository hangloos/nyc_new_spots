class NycNewSpots::Spots 

attr_accessor :name, :address,:location, :categories, :price_range, :hours, :more_business_information, :phone_number

def self.today
spot_1 = self.new
spot_1.name = "Ludlow Coffee Supply"
spot_1.location = "Lower East Side"
spot_1.address = "176 Ludlow St New York, NY 10002"
spot_1.categories = "Coffee & Tea, Breakfast & Brunch"
spot_1.price_range = "Under $10"
spot_1.hours = "Mon 8:00am - 8:00pm"
spot_1.phone_number = "(212) 777-7465"
spot_1.more_business_information = "Test More Business Info!"

spot_2 = self.new
spot_2.name = "Ludlow Coffee Supply"
spot_2.location = "Lower East Side"
spot_2.address = "176 Ludlow St New York, NY 10002"
spot_2.categories = "Coffee & Tea, Breakfast & Brunch"
spot_2.price_range = "Under $10"
spot_2.hours = "Mon 8:00am - 8:00pm"
spot_2.phone_number = "(212) 777-7465"
spot_2.more_business_information = "Test More Business Info!"

[spot_1,spot_2]
end






end




#:name, :address,:location, :categories, :price_range, :hours, :more_business_information,  :phone_number