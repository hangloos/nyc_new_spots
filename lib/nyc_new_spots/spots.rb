class NycNewSpots::Spots 

attr_accessor :name, :address_phone_number, :food_type
  
  def initialize(name = nil,address_phone_number = nil, food_type = nil)
    @name = name
    @address_phone_number = address_phone_number
    @food_type = food_type
  end


  def self.all
    @@all ||= scrape_eater
  end

  def self.find(id)
    self.all[id-1]
  end

  def self.find_by_name(name)
    self.all.detect{|x| x.name.downcase.strip == name.downcase.strip}
  end

 
 def self.more_information(name)

    doc =  Nokogiri::HTML(open("http://ny.eater.com/maps/best-new-new-york-restaurants-heatmap"))
        #pull out the object of the name entered. then figure out that index in self.all
        index_for = self.all.detect{|x| x.name.downcase.strip == name.to_s.downcase.strip}
        if index_for != nil
          index_calculation = self.all.index(index_for)
          #use that index in my scrape text to output more information
          final_index_calculation = (index_calculation + 12)
          more_information_text = doc.css("div.c-entry-content p")[final_index_calculation].text
        puts "More Business Information:"
        puts "\n"  
        puts more_information_text.to_s
        else
          puts "This is spelled wrong. Try again. "
        end
  end

private
  def self.scrape_eater
    doc = Nokogiri::HTML(open("http://ny.eater.com/maps/best-new-new-york-restaurants-heatmap"))
          #restaurant_names scrape
          names_array = doc.search("h2").text.strip
          names_array = names_array.chomp("Related Maps")
          new_array = names_array.split("\n")
          final_array = []
          new_array.each_with_index{|x,index| if index < 9
          final_array << x.delete(x[0])
          else
          final_array << x.delete(x[0]).delete(x[1])
          end}
          final_array_striped = []
          final_array.each{|x| final_array_striped << x.strip}

          #address_phone_number
          address_phone_number_array = doc.css("div.c-mapstack__address").text.split("\n")
          
          #food_type
          
          food_type_array = doc.css("div.c-mapstack__category").text.strip.split("\n")
          food_type_array.map{|x| x.strip! if x.respond_to? :strip!}
          food_type_array.delete("")
          food_type_array.delete("$$$$")
      
      #create new instances
      final_array_striped.each_with_index.map{|x,index| new(x,address_phone_number_array[index],food_type_array[index])}
  end


end
