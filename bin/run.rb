require_relative '../config/environment'

puts "HELLO WORLD"

puts "Would you like to see a list of Users?"
response = gets.chomp
if response == "yes" || response == "y"
    puts User.all
end

puts "Please enter your name"

name = gets.chomp
name = name.gsub(/[()-,."']/, '')
puts "your name is #{name}"
#gsub bugs out when we use a colon here, need to figure out how to fix that.

puts "Please enter the starting date for your trip (yyyy-mm-dd)"
    start_date = gets.chomp 
    # if start_date.length < 10 && 

puts "Please enter your budget formatted as a dollar amount (integer)"
#we must decide here if we are formatting with a total or symbol. Are we using a float, int, or $$$?
budget = gets.chomp
budget = budget.to_i
    if budget > 0
        puts "This is the budget you entered $#{budget}"
    else
        puts "invalid"
    end

puts "Please enter the number of people you are traveling with as an integer"

peeps = gets.chomp
peeps = peeps.to_i
    if peeps > 0
        puts "This is the number of people #{peeps}"
    else 
        puts "Invalid!"
    end

    user = User.new({name: name, budget: budget, peeps: peeps})