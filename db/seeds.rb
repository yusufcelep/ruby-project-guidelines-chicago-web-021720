# p "RUNNING SEED FILE"
require 'dbf'

# puts User.all

# Delete all Users in DataBase, useful if we're going to run this file a lot.
# User.destroy_all


# ASSUMING THE HOTELS FILE IS ALSO IN THIS DB FOLDER
filepath = File.join(File.dirname(__FILE__), 'Hotels.dbf')
hotels = DBF::Table.new(filepath)

# Use docs at the repo address for each loop syntax
# hotels.each do |hotel|
#   puts hotel.phone
# end

hotels.each do |hotel|
    hotel_phone = hotel.phone
    # hotel_website = hotel.web_url 
    # hotel_zip = hotel.zip 
    hotel_address = hotel.address 
    # hotel_rooms = hotel.numrooms 
    hotel_name = hotel.name
    Hotel.create(phone: hotel_phone, website: nil, zip: nil, address: hotel_address, num_rooms: nil, name: hotel_name)
    # puts hotel_name.class
  end
  binding.pry
