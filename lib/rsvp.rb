# class RSVP 
#     attr_accessor :user, :budget, :num_people, :hotel
#     @@all = []

#     def initialize(user, budget, num_people, hotel)
#         @user = user
#         @budget = budget
#         @num_people = num_people
#         @hotel = hotel
#         @@all << self
#     end

#     def self.all 
#         @@all
#     end

#     def self.user
#         self.all.select {|booking| booking.user} 
#     end

#     def self.hotel
#         self.all.select {|booking| booking.hotel}
#     end
# end

#   +----------------------------------------[  C o d e  B e l o w  ]----------------------------------------+

class RSVP < ActiveRecord::Base


end

#belongs to users




#We need to make the user select a hotel that aligns with their choices after this and then assign that hotel to a variable, like "selected_hotel."
# Rsvp.create({user_id: user.id, hotel_id: selected_hotel.id, breakfast: nil, pool: nil, gym: nil, budget: selected_hotel.cost*user.numrooms, departure_date: user. departure date, etc})
# t.string :user_id
# t.string :hotel_id
# t.string :start_date
# t.string :departure_date
# t.integer :budget
# t.integer :num_rooms
# t.boolean :breakfast
# t.boolean :pool
# t.boolean :gym