
# class User
#     attr_accessor :name, :budget, :num_people, :dates
#     @@all = []

#     def initialize(name, budget, num_people)
#         @dates = dates
#         @name = name
#         @budget = budget
#         @num_people = num_people
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def available_hotels
#         hotels.all.select do
#             |hotel| hotel.capacity =< self.num_people,
#             hotel.cost =< self.budget
#         end
#     end

#     def booked_hotels
#         RSVP.all.select {|booking| booking.user == self}
#     end

#     def add_hotel(budget, num_people, hotel)
#         if available_hotels.include?(hotel)
#             RSVP.new(self, budget, num_people, hotel)
#             puts "Thank you for booking with #{hotel}! We look forward to your visit!"
#         else
#             raise "Please select a valid hotel from the available hotels list."
#     end
# end

#   +----------------------------------------[  C o d e  B e l o w  ]----------------------------------------+

# def table(name, start_date, budget, peeps)
#     sql = <<-SQL
#     CREATE TABLE IF NOT EXISTS users (
#         id INTEGER PRIMARY KEY, 
#         name TEXT, 
#         start_date DATETIME, 
#         budget INTEGER, 
#         peeps INTEGER
#         )
#         SQL
# end

class User < ActiveRecord::Base
    def self.return_hotels
        Rsvp.where(Rsvp.user_id = self.id)
    end
end

# t.string :name
# t.datetime :start_date
# t.datetime :departure_date
# t.integer :budget
# t.integer :num_rooms
# t.boolean :breakfast
# t.boolean :pool
# t.boolean :gym