@location = "forest"
@inventory = {:water_bottle => "empty",
clothes: "good condition",
bag: "small"
}

@which_option = {forest: @options_forest = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "forest"},
"Check berry bushes" => {text: "You move closer to the berry bushes and see they are covered in bright red berries. They look tastey.", location: "berries"},
"Move north" => {text: "You move towards the sound of the water and find a clear stream cutting through the tree line. Across the stream, you can see wide open fields. Upstream, you see a mountain area, and downstream you see that the water cuts continues cutting through the trees.", location: "river1"},
"Move east" => {text: "You attempt to head east but the trees soon become too thick. You head back to the clearing.", location: "forest"},
"Move south" => {text: "You attempt to head south but the trees soon become too thick. You head back to the clearing.", location: "forest"},
"Move west" => {text: "You attempt to head west but the trees soon become too thick. You head back to the clearing.", location: "forest"}
},
berries: @options_berries = {"Eat the berries" => {text: "The berries were poisonous and cause you a quick but painful death.
  GAME OVER", location: "end"},
"Leave the berries" => {text: "Not knowing enough about the tempting fruits, you leave the berries alone.", location: "forest"}
},
river1: @options_river1 = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "river1"},
"Return to forest" => {text: "You return to the small clearing with red berry bushes dotted around you.", location: "forest"},
"Move upstream" => {text: "Moving upstream, you find a slow-running section of the water at the bottom of a waterfall, with fish swimming around.", location: "waterfall"},
"Move downstream" => {text: "Heading downstream, continuing through the trees, you hear rustling around you and see a cave in front of you.", location: "outside_cave1"},
"Try to cross river" => {text: "Rolling up your trousers, you step into the stream, surprised by how strong the current feels against your legs. Wading deeper, the water rises to above your waist and the fast flowing water batters against you.", location: "river2"},
"Fill water bottle" => {text: "Taking the empty water bottle from your bag, you fill it in the stream.", location: "river1"},
},
river2: @options_river2 = {"Keep moving forwards" => {text: "The powerful water soons become too much for you and sweeps you off your feet, hurling you downstream. With no way of regaining your footing, you soon perish in the water depths.
  GAME OVER", location: "end"},
"Head back" => {text: "As the water reaches your chest and you feet begin to slip, you decide not to push your luck and head back to the river bank.", location: "river1"}
},
waterfall: @options_waterfall = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "waterfall"},
"Look around" => {text: "Searching around, you notice a sharp stick on the ground.", location: "waterfall_look"},
"Try to catch fish" => {text: "With nothing but your bare hands to help, you reach into the water and spend a few infuriating minutes watching the fish swim away from your grasp.", location: "waterfall"},
"Head back to fast flowing stream" => {text: "You head back towards the stream near where you awoke.", location: "river1"},
"Attempt to cross river" => {text: "You wade into the water, finding it easy to walk through with it running so slowly. You make it across to the other side.", location: "fields"}
},
waterfall_look: @options_waterfall_look = {"Pick up stick" => {text: "You pick up the sharp stick", location: "waterfall1"},
"Leave stick" => {text: "Who needs a sharp stick? You don't pick it up.", location: "waterfall"}
},
waterfall1: @options_waterfall1 = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "waterfall1"},
"Try to catch fish" => {text: "Using the sharp stick, you try to catch fish. After a couple of unsuccessful attempts, you manage to catch a fish!", location: "waterfall1"},
"Head back to fast flowing stream" => {text: "You head back towards the stream near where you awoke. You leave the stick behind.", location: "river1"},
"Attempt to cross river" => {text: "You wade into the water, finding it easy to walk through with it running so slowly. You make it across to the other side.", location: "fields"}
},
fields: @options_fields,
outside_cave1: @options_outside_cave1 = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "outside_cave1"},
"Look around" => {text: "Turning around, you search for the source of the sound. Through the dim light of the trees, you notice a pair of eyes looking at you.", location: "outside_cave2"},
"Go into cave" => {text: "You head into the cave, the light from outside fading quickly into darkness as you stumble through.", location: "cave1"},
"Head back to fast stream" => {text: "You head back towards the stream near where you awoke.", location: "river1"}
},
outside_cave2: @options_outside_cave2 = {"Approach creature" => {text: "It's a black bear!", location: "bear"},
"Leave creature alone" => {text: "Deciding not to engage the mysterious animal, you head further towards the cave.", location: "outside_cave1"}
},
bear: @options_bear = {"Run away!!" => {text: "Attempting to outrun the angry animal, it easily catches up to you and eats you.
  GAME OVER", location: "end"},
"Stand your ground, making lots of noise" => {text: "Intimidated by your show of power, the bear backs down and leaves.", location: "outside_cave3"}
},
outside_cave3: @options_outside_cave3 = {"Check inventory" => {text: "Your clothes are in good condition and will keep you warm. You have a small bag and an empty water bottle.", location: "outside_cave3"},
"Go into cave" => {text: "You head into the cave, the light from outside fading quickly into darkness as you stumble through.", location: "cave1"},
"Head back to fast stream" => {text: "You head back towards the stream near where you awoke.", location: "river1"}
},
cave1: @options_cave1 = {"Turn around and exit cave" => {text: "Unable to find your way, your turn around and exit the cave", location: "outside_cave1"},
"Keep moving forwards" => {text: "You head further into the cave, your eyes adjusting slightly to the darkness. You reach a fork in the path.", location: "cave_fork"}
},
cave_fork: @options_cave_fork = {"Go left" => {text: "You go left. You walk for an immeasurable length of time before the darkness consumes you and you can't even see your hands in front of your face. Not wanting to go any further, you turn around.", location: "cave_fork2"},
"Go right" => {text: "Heading down the right tunnel, you begin to notice the light increasing. Eventually, you exit the cave, standing over a large field, looking to belong to a farmer. You see a small hut at the other end of the field.", location: "farm"}
},
cave_fork2: @options_cave_fork2 = {"Go right" => {text: "Heading down the right tunnel, you begin to notice the light increasing. Eventually, you exit the cave, standing over a large field, looking to belong to a farmer. You see a small hut at the other end of the field.", location: "farm"},
"Exit cave" => {text: "Unable to find your way, your turn around and exit the cave", location: "outside_cave1"},
},
farm: @options_farm = {"Go back into cave"}
}

puts "As the sharp chirp of birds infiltrates your slumber, you groggily open your eyes.
Instead of the soft light of the morning sun filtering through your curtains revealing
the familiar sight of your bedroom, you find you're in a small clearing of a dense forest.
Standing up, you take in your surroundings. You can see some dark green bushes littered
with crimson berries dotted between the trees. You can hear the sound of running water
to the north."

def player_choice
  puts "..
What would you like to do?"
  @which_option.each do |location, opt|
    if @location.to_sym == location
      @all_options = opt.keys
      opt.each do |keys, values|
        puts "- #{keys}"
      end
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
  while @location != "end" do
    player_choice
    puts ""
    action_output
  end
end

turn
