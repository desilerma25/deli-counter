# build line method for katz_deli
def line(katz_deli) 
    if katz_deli.length == 0  # if no one is in line...
        puts "The line is currently empty."  # then output "The line is currently empty."
    else  # if there are people in line
    status = ["The line is currently:"]  # what is their status
    katz_deli.each_with_index do |name, index|  # circles through each element with its index
        status.push("#{index+1}. #{name}") # adds place in line and cust. name to end of status
    end
    puts status.join(" ")  # turns array into sting and places a space between elements
    end
end


# method for new cust. when entering
def take_a_number(katz_deli, name)
    katz_deli.push(name) # push new name to end of line
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line." # output greeting and staus for cust.
end

# method now_serving calls for next person 
def now_serving(katz_deli)
    if katz_deli.length == 0 # if no one in line 
        puts "There is nobody waiting to be served!" # output "There is nobody waiting to be served!"
    else # if there is someone in line
        puts "Currently serving #{katz_deli[0]}." # output status update w/ num. in line
    end
    katz_deli.shift # output first name from array and remove from array
end