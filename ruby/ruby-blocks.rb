# Ruby Blocks
# A BLOCK is an anonmyous function that we pass to a method

# While - a ruby keyword that initiates iteration
limit = 5
while limit <= 7
    p "Current limit: #{limit}"
    limit += 1
end

# times do - basic looping method that will repeat a code a specific number of time.
reps = 3
reps.times do
    p "I love me"
end

# each do - looping method similar to .forEach
# original array will be untouched
nums = [1, 2, 3, 4, 5, 6]
nums.each do |value|
    p value * 2
end

# each_with_index do - same each do except has an additional index parameter
nums.each_with_index do |value, index|
    puts "Current index: #{index} Value: #{value}"
end

# map do - similar to MAP
# creates a new array
# original array will be untouched
new_arr = nums.map do |value|
    value * 3
end
p new_arr

another_new_arr = nums.map do |value|
    "Singlar thing"
end
p another_new_arr

# select - similar to FILTER
# creates a new array
# original array will be untouched
# peep the syntax
evens = nums.select { |n| n.even? }
# p evens

other_way = nums.select do |value|
    value.even?
end
p other_way

fruit_stock = {
    apples: 10,
    oranges: 1,
    bananas: 3,
    pineapples: 4,
    strawberry: 11,
    melon: 20
}

# creates a set of values that only has the keys / values that are greater than 5
stocked_items = fruit_stock.select { |k,v| v > 5}
puts stocked_items

# select! - Permanantly changes the array
# nums.select! { |n| n.even? }
# p nums

# range - creates a range
# used in conjuction with loops
# numbers
range_nums = 1..20 # 1-20
range_nums.each do |value|
    p value
end

ranges_exclusive = 1...20 # 1-19
range_even = ranges_exclusive.select { |n| n.even? }
p range_even

# letters
range_letters = 'a'..'j'
range_letters.each do |value|
    p value
end