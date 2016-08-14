vivis_fancy_eatery = {
	vip: {
		status: "diamond",
		seat_info: {
			ocean_view: 2,
			city_view: 5
		},
		wine: [
			"Fancy of the Pants",
			"The 1%"
		]
	},
	hipsters: {
		status: "gold",
		seat_info: {
			wall_view: 10,
			inside_the_eatery_view: 15
		},
		wine: [
			"Cheap Thrills",
			"I knew about this wine before you served it here"
		]
	},
	commoner: {
		status: "coal",
		seat_info: {
			bathroom_view: 8,
			floor_view: 25
		},
		wine: [
			"Diamond in the Rough"
		]
	}


}

####TESTS####

# puts vivis_fancy_eatery[:hipsters][:wine]

# puts vivis_fancy_eatery[:commoner][:wine].push("A New Hope")
# puts vivis_fancy_eatery

vivis_fancy_eatery[:vip][:wine].each do |wine|
	puts "#{wine} is such a good wine"
end

# puts vivis_fancy_eatery[:commoner][:seat_info][:bathroom_view].next