def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man, that's enough for a party!"
  puts "Get a blanket.\n"
end
#^^ This would be the full script, with the variables included.

puts "We can just give the function numbers directly:"
cheese_and_crackers(20,30)
#the cheese_and_crackers variable will be temporary.
#The 20 will go towards cheese_count, 30 will go or boxes_of_crackers

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
#see, the variable names do not count. what counts are the integers after
#10 is cheese_count, 50 is boxes_of_crackers

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)
#This goes back to first line. 30 for cheese_count, 11 for boxes_of_crackers

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
