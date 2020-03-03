# class Hotel
#     attr_reader :location, :capacity, :num_rooms, :brand, :breakfast, :rating, :reviews
#     @@all = []

#     def initialize(brand, capacity, cost)
#         @cost = cost
#         @capacity = capacity
#         @brand = brand
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def upcoming_rsvp
#         RSVP.all.select {|booking| rsvp.hotel == self}
#     end
# end

#   +----------------------------------------[  C o d e  B e l o w  ]----------------------------------------+

class Hotel < ActiveRecord::Base

end