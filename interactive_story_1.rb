location = "forest"
inventory = {:water_bottle => "empty",
:clothes => "good condition",
:bag => "small"
}

@options_forest = ["Check inventory",
"Check berry bushes",
"Move north",
"Move east",
"Move south",
"Move west"
]

@options_river = ["Check inventory",
"Return to forest",
"Move upstream",
"Move downstream",
"Try to cross river",
"Fill water bottle",
]

puts "As the sharp chirp of birds infiltrates your slumber, you groggily open your eyes.
Instead of the soft light of the morning sun filtering through your curtains revealing
the familiar sight of your bedroom, you find you're in a small clearing of a dense forest.
Standing up, you take in your surroundings. You can see some dark green bushes littered
with crimson berries dotted between the trees. You can hear the sound of running water
to the north."

def player_choice(location)
  puts "What would you like to do?"
  case location
  when "forest"
    puts @options_forest
  when "river1"
    puts @options_river
  when "river2"
    puts @options_river2
  when "waterfall"
    puts @options_waterfall
  when "cave1"
    puts @options_cave1
  when "cave2"
    puts @options_cave2
  end
  action = gets.chomp
end

def action_output(action)
end
