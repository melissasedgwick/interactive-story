location = "forest"
inventory = {:water_bottle => "empty",
:clothes => "good condition",
:bag =? "small"
}
@options_forest = ["Check inventory"
"Check berry bushes"
"Move north"
"Move east"
"Move south"
"Move west"]

puts "As the sharp chirp of birds infiltrates your slumber, you groggily open your eyes.
Instead of the soft light of the morning sun filtering through your curtains revealing
the familiar sight of your bedroom, you find you're in a small clearing of a dense forest.
Standing up, you take in your surroundings. You can see some dark green bushes littered
with crimson berries dotted between the trees. You can hear the sound of running water
to the north."

def player_choice
  puts "What would you like to do?"
  puts @options_forest
  action = gets.chomp
end
