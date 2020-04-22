artists = Artist.create!(name: "Gertrude", description: "spoken word", bio: "lives in chicago", image: "", approved: true, highlighted: false)
artists = Artist.create!(name: "Gretchen ", description: "unique earrings", bio: "lives in bay area", image: "", approved: true, highlighted: false)
artists = Artist.create!(name: "Gabriela ", description: "acrylic paintings", bio: "lives in Indonesia", image: "", approved: true, highlighted: false)
artists = Artist.create!(name: "Annie", description: "baking videos", bio: "lives in chicago", image: "", approved: true, highlighted: false)

events = Event.create!(name: "farmer's market", date: "06/13/2020", location: "bay area", description: "support local vendors", artist_id: 2)
events = Event.create!(name: "open mic", date: "06/13/2020", location: "Chicago", description: "view a variety of artists", artist_id: 4)

categories = Category.create!(name: "food", image: "")
categories = Category.create!(name: "jewelry", image: "")
categories = Category.create!(name: "painting", image: "")
categories = Category.create!(name: "words", image: "")
