User.create!({ name: "Eden", email: "eden@example.com", password: "password", admin: true })
User.create!({ name: "Person", email: "person@example.com", password: "password", admin: false })
User.create!({ name: "Test", email: "test@example.com", password: "password", admin: false })

Artist.create!({ name: "Gertrude", description: "spoken word", bio: "lives in chicago", image: "image1", approved: true, highlighted: false })
Artist.create!({ name: "Gretchen ", description: "unique earrings", bio: "lives in bay area", image: "image2", approved: true, highlighted: false })
Artist.create!({ name: "Gabriela ", description: "acrylic paintings", bio: "lives in Indonesia", image: "image3", approved: true, highlighted: false })
Artist.create!({ name: "Annie", description: "baking videos", bio: "lives in chicago", image: "image4", approved: true, highlighted: false })

Category.create!(name: "food", image: "image1")
Category.create!(name: "jewelry", image: "image2")
Category.create!(name: "painting", image: "image3")
Category.create!(name: "words", image: "image4")

ArtistCategory.create!(artist_id: 1, category_id: 1)
ArtistCategory.create!(artist_id: 2, category_id: 2)
ArtistCategory.create!(artist_id: 3, category_id: 3)
ArtistCategory.create!(artist_id: 4, category_id: 4)

FavoritedArtist.create!(status: "favorited", user_id: 1, artist_id: 2)
FavoritedArtist.create!(status: "favorited", user_id: 2, artist_id: 1)
FavoritedArtist.create!(status: "favorited", user_id: 2, artist_id: 4)
FavoritedArtist.create!(status: "favorited", user_id: 3, artist_id: 1)

Event.create!({ name: "farmer's market", date: Date.new(2020, 06, 25), location: "bay area", description: "support local vendors" })
Event.create!({ name: "open mic", date: Date.new(2020, 06, 13), location: "Chicago", description: "view a variety of artists" })

ArtistEvent.create!(status: "favorited", user_id: 1, event_id: 1, artist_id: 2)
ArtistEvent.create!(status: "favorited", user_id: 2, event_id: 2, artist_id: 4)
