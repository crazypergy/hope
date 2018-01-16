link_ids = [
	"83huVf7qa5E",
	"R_4Sberw-ZY",
	"KkuICGFmwvY",
	"EKzVGl5kCNw",
	"GGi-3CVV00Y",

  "GH-IXvE4YJM",
  "D8svgqfuFB0",
  "UxKc3t1TBe8",
  "rMOw75H0XsU",
  "TtlEnkk1qe4",

  "ROVIK8feUAA",
  "dBUTl6avoVw",
  "SID0JPBpUDw",
  "BBli08dWC3s",
  "jkvBgdoelbo",

  "P01ShbZRopI",
  "b1vOQDg2oYw",
  "4DYrUjmL7ao",
  "Xa6g78fINB8",
  "301dVX9tsFg",

  "ka5VUJdDcII",
  "-pemcEcAjj4",
  "irpf24E9xrw",
  "-v0nIJzX7Mo",
  "E4A1JUUwm8E"
]

link_ids.each do |id|
	Message.create(
		date: DateTime.now,
		link: "https://youtu.be/" + id
		)
end
