p "RUNNING SEED FILE"
require 'dbf'

# puts User.all

# Delete all Users in DataBase, useful if we're going to run this file a lot.
# User.destroy_all


# ASSUMING THE HOTELS FILE IS ALSO IN THIS DB FOLDER
filepath = File.join(File.dirname(__FILE__), 'Hotels.dbf')
hotels = DBF::Table.new(filepath)
# Use docs at the repo address for each loop syntax
hotels.each do |hotel|
  hotel_phone.push (hotel.phone)
  hotel_website.push (hotel.web_url)
  hotel_zip.push (hotel.zip)
  hotel_address.push (hotel.address) 
  hotel_rooms.push (hotel.numrooms)
  hotel_name.push (hotel.name)
  # Hotel.create({phone: hotel_phone, website: nil, zip: nil, address: hotel_address, num_rooms: nil, name: hotel_name})
end


#what we have to play around with in this database:
# web_url
# phone
# zip
# gis_id (sounds like a foreign key for mapping with some other table)
# address
# numrooms
# name
# latitude/longitude
# addrid (another foreign key)


#okay'd generating random data to supplement this table with duke so we can create a more complex program


# boolean = [true, false]
# pool = pool.sample


#hotel cost = rand(900)

# breakfast = boolean.sample

#breakfast = boolean.sample
  #if true
  #breakfast_good? = boolean.sample
  #else breakfast_good = false

# gym = boolean.sample 

# def bedbugs 
  #has_bugs = boolean.sample
      #if true value = rand(100000000000000)
      #if false value = 0 
      #puts this hotel has an average of #{value} bedbugs in each room.


#rating = a float between 1 and 5. Obvs this is going to utilize .rand but I'm really bad at that.


#reviews?
#idk I'm thinking scrape the user reviews from rottentomatoes.com for some abysmally bad movie and just put assign them here
