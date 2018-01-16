# TODO: Add like... 20 videos or something to test pagination with kaminari
link_ids = [
	"83huVf7qa5E",
	"R_4Sberw-ZY",
	"KkuICGFmwvY",
	"EKzVGl5kCNw",
	"GGi-3CVV00Y"
]

link_ids.each do |id|
	Message.create(
		date: Time.new(2018, 1, 16),
		link: "https://youtu.be/" + id
		)
end
