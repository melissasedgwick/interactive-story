@location = "forest"
@inventory = {:water_bottle => "empty",
clothes: "good condition",
bag: "small"
}
@status = "alive"

which_option = {forest: @options_forest,
river1: @options_river2,
river2: @options_river2,
waterfall: @options_waterfall,
cave1: @options_cave1,
cave2: @options_cave2
}

@options_forest = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "forest"},
"Check berry bushes" => {text: "You move closer to the berry bushes and see they are covered in bright red berries.", location: "forest"},
"Move north" => {text: "You move towards the sound of the water and find a clear stream cutting through the tree line. Across the stream, you can see wide open fields. Upstream, you see a mountain area, and downstream you see that the water cuts continues cutting through the trees.", location: "river1"},
"Move east" => {text: "You attempt to head east but the trees soon become too thick. You head back to the clearing.", location: "forest"},
"Move south" => {text: "You attempt to head south but the trees soon become too thick. You head back to the clearing.", location: "forest"},
"Move west" => {text: "You attempt to head west but the trees soon become too thick. You head back to the clearing.", location: "forest"}
}

@options_river1 = ["Check inventory",
"Return to forest",
"Move upstream",
"Move downstream",
"Try to cross river",
"Fill water bottle",
]

@options_river2 = ["Keep moving forwards",
"Head back"
]

puts "As the sharp chirp of birds infiltrates your slumber, you groggily open your eyes.
Instead of the soft light of the morning sun filtering through your curtains revealing
the familiar sight of your bedroom, you find you're in a small clearing of a dense forest.
Standing up, you take in your surroundings. You can see some dark green bushes littered
with crimson berries dotted between the trees. You can hear the sound of running water
to the north."

def player_choice
  puts "What would you like to do?"
  case @location
  when "forest"
    options = @options_forest
    puts @options_forest.keys
  when "river1"
    options = @options_river1
    puts @options_river1.keys
  when "river2"
    options = @options_river2
    puts @options_river2.keys
  when "waterfall"
    options = @options_waterfall
    puts @options_waterfall.keys
  when "cave1"
    options = @options_cave1
    puts @options_cave1.keys
  when "cave2"
    options = @options_cave2
    puts @options_cave2.keys
  end
  @action = gets.chomp
  while options.include?(@action) == false
    puts "Please type the command exactly as it shows."
    @action = gets.chomp
  end
end

def action_output

end

def turn
  player_choice
  action_output
end

turn
