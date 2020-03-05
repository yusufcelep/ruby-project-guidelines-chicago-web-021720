require_relative '../config/environment'
require 'pry'

puts "HELLO WORLD"

def checkdate(string)
    if string.length == 10 && string[4] == '-' && string[7] == '-'
        start_check = string.split('-')
        start_check = start_check.join("")
            if start_check.to_i > 0
                puts "Your trip begins on #{string}"
            else puts "Invalid"
        end
    else puts "Invalid"
    end
    answer = string.to_time
    # string = string.split('-')
    # puts string
    # answer = DateTime.new(string[0], string[1], string[2])
    return answer
  end


User.destroy_all



# name = nil
# start_date = nil
# departure_date = nil
# budget = nil
# departure_date = nil
# num_rooms = nil

# User.create({name: name, budget: budget, start_date: start_date, departure_date: departure_date, num_rooms: num_rooms})
def list_users
    puts "Would you like to see a list of Users?"
    response = gets.chomp
        if response == "yes" || response == "y"
    puts User.all
    end
end

def enter_name
    puts "Please enter your name"

    name = gets.chomp
    name = name.gsub(/[()-,."']/, '')
    user = User.new
    puts "Greetings, #{name}. Your customer identification number is #{user.id}."
#gsub bugs out when we use a colon here, need to figure out how to fix that.
end

def enter_starting_date
    puts "Please enter the starting date for your trip (yyyy-mm-dd)"
    start_date = gets.chomp
    checkdate(start_date)
    #links to RSVP table
end

def enter_departure_date
    puts "Please enter the departure date for your trip (yyyy-mm-dd)"
    departure_date = gets.chomp 
    checkdate(departure_date)
end

def define_budget
    puts "Please enter your budget formatted as a dollar amount (integer)"
#we must decide here if we are formatting with a total or symbol. Are we using a float, int, or $$$?
    budget = gets.chomp
    budget = budget.to_i
    if budget > 0
        puts "This is the budget you entered $#{budget}"
        budget
    else
        puts "invalid"
        define_budget
    end
end

def enter_rooms
    puts "Please enter the number of you will be booking integer"
    num_rooms = gets.chomp
    num_rooms = num_rooms.to_i
        if num_rooms > 0
            puts "This is the number of people #{num_rooms}"
            num_rooms
        else 
            puts "Invalid!"
            enter_rooms
        end
    end


    # Hotel.where("num_rooms >= ?", num_rooms)

    

    name = enter_name
    start_date = enter_starting_date 
    departure_date = enter_departure_date
    budget = define_budget
    num_rooms = enter_rooms






    user = User.create({name: name, budget: budget, start_date: start_date, departure_date: departure_date, num_rooms: num_rooms})
    binding.pry
    #need to review video and update here instead of create.

