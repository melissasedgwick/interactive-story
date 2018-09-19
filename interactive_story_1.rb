@location = "forest"
@inventory = {:water_bottle => "empty",
clothes: "good condition",
bag: "small"
}
@status = "alive"

@which_option = {forest: @options_forest = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "forest"},
"Check berry bushes" => {text: "You move closer to the berry bushes and see they are covered in bright red berries.", location: "forest"},
"Move north" => {text: "You move towards the sound of the water and find a clear stream cutting through the tree line. Across the stream, you can see wide open fields. Upstream, you see a mountain area, and downstream you see that the water cuts continues cutting through the trees.", location: "river1"},
"Move east" => {text: "You attempt to head east but the trees soon become too thick. You head back to the clearing.", location: "forest"},
"Move south" => {text: "You attempt to head south but the trees soon become too thick. You head back to the clearing.", location: "forest"},
"Move west" => {text: "You attempt to head west but the trees soon become too thick. You head back to the clearing.", location: "forest"}
},
river1: @options_river1 = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "river1"},
"Return to forest" => {text: "You return to the small clearing with red berry bushes dotted around you.", location: "forest"},
"Move upstream" => 1,
"Move downstream" => 1,
"Try to cross river" => 1,
"Fill water bottle" => 1,
},
river2: @options_river2 = ["Keep moving forwards",
"Head back"
],
waterfall: @options_waterfall,
cave1: @options_cave1,
cave2: @options_cave2
}

puts "As the sharp chirp of birds infiltrates your slumber, you groggily open your eyes.
Instead of the soft light of the morning sun filtering through your curtains revealing
the familiar sight of your bedroom, you find you're in a small clearing of a dense forest.
Standing up, you take in your surroundings. You can see some dark green bushes littered
with crimson berries dotted between the trees. You can hear the sound of running water
to the north."

def player_choice
  puts "What would you like to do?"
  @which_option.each do |location, opt|
    if @location.to_sym == location
      @all_options = opt.keys
      puts opt.keys
    end
  end
  @action = gets.chomp
  while !@all_options.include?(@action)
    puts "Please type the command exactly as it shows."
    @action = gets.chomp
  end
end

def action_output
  puts @which_option[@location.to_sym][@action][:text]
  @location = @which_option[@location.to_sym][@action][:location]
end

def turn
  while @status == "alive" do
    player_choice
    action_output
  end
end

turn
