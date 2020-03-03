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