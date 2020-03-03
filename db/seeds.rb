p "RUNNING SEED FILE"
require 'dbf'

puts User.all

# Delete all Users in DataBase, useful if we're going to run this file a lot.
# User.destroy_all


# ASSUMING THE HOTELS FILE IS ALSO IN THIS DB FOLDER
filepath = File.join(File.dirname(__FILE__), 'Hotels.dbf')
hotels = DBF::Table.new(filepath)
# Use docs at the repo address for each loop syntax
hotels.each do |hotel|
  puts hotel.name
end

