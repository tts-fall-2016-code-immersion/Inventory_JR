puts "here is your current inventory to The Kitchen Store:\n\n"

kitchen_inventory =
{"spatula" => 500,
"mixing bowl" => 700,
"whisk" => 1000,
"cutting board" => 1300}

kitchen_inventory.each_pair {|key, value| puts "#{key} - #{value}"}


loop do puts "\nWould you like to 1. Edit current items 2. Add new items 3. delete items or 4. Quit the program?
\nPlease answer 1, 2, 3 or 4."
reply = gets.chomp.downcase

until reply == "1" || reply == "2" || reply == "3" || reply == "4"
  puts "Please provide a valid answer.\n"
  reply = gets.chomp.downcase
end

if reply == "1"
  puts "Please enter the name of the item you wish to edit"
  existing_item = gets.chomp
  puts "Please enter new item"
  edited_key = gets.chomp
  kitchen_inventory[edited_key] = kitchen_inventory.delete(existing_item)
  puts "Here is your new inventory list:"
  kitchen_inventory.each_pair {|key, value| puts "#{key} - #{value}"}

elsif reply == "2"
  puts "Please enter the name of the item you wish to add"
  add_item = gets.chomp
  puts "Please enter the inventory amount you wish to add"
  inventory = gets.chomp.to_i
  kitchen_inventory[add_item] = inventory
  puts "Here is your new inventory list:"
  kitchen_inventory.each_pair {|key, value| puts "#{key} - #{value}"}

elsif reply == "3"
  puts "What item do you wish to delete?"
  remove_item = gets.chomp
  kitchen_inventory.delete(remove_item)
  puts "#{remove_item} has been removed"
  puts "Here is your current inventory:"
  kitchen_inventory.each_pair {|key, value| puts "#{key} - #{value}"}
  #calls block once for each key in hsh, passing the key-value pair as parameters
  #if no block is given, an enumerator is returned instead
else reply == "4"
   break
end
end
