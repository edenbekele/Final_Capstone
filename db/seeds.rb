User.create!({ name: "Eden", email: "eden@example.com", password: "password", admin: true })
User.create!({ name: "Person", email: "person@example.com", password: "password", admin: false })
User.create!({ name: "Test", email: "test@example.com", password: "password", admin: false })

Artist.create!({ name: "Gertrude", description: "Spoken Word", bio: "Bibendum at varius vel pharetra vel turpis. Netus et malesuada fames ac. Sit amet mattis vulputate enim nulla. Sed elementum tempus egestas sed sed risus. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Mattis aliquam faucibus purus in massa. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Erat pellentesque adipiscing commodo elit. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Mi bibendum neque egestas congue. Id velit ut tortor pretium viverra suspendisse potenti nullam. Vel facilisis volutpat est velit egestas dui id ornare. Rhoncus urna neque viverra justo nec ultrices. Odio ut sem nulla pharetra.", image: "poetry.jpg", approved: true, highlighted: false })
Artist.create!({ name: "Gretchen ", description: "Unique Earrings", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ultricies lacus sed turpis tincidunt id aliquet risus. Mi bibendum neque egestas congue. Elementum nisi quis eleifend quam. Nulla malesuada pellentesque elit eget. Egestas quis ipsum suspendisse ultrices gravida dictum. Posuere lorem ipsum dolor sit amet. Porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Non curabitur gravida arcu ac tortor dignissim convallis aenean et. Ac tortor vitae purus faucibus. Ac ut consequat semper viverra nam libero.", image: "jewelry.jpg", approved: true, highlighted: false })
Artist.create!({ name: "Anne ", description: "Baking Videos", bio: "Bibendum at varius vel pharetra vel turpis. Netus et malesuada fames ac. Sit amet mattis vulputate enim nulla. Sed elementum tempus egestas sed sed risus. Dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu. Mattis aliquam faucibus purus in massa. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Erat pellentesque adipiscing commodo elit. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Mi bibendum neque egestas congue. Id velit ut tortor pretium viverra suspendisse potenti nullam. Vel facilisis volutpat est velit egestas dui id ornare. Rhoncus urna neque viverra justo nec ultrices. Odio ut sem nulla pharetra.", image: "baking.jpg", approved: true, highlighted: false })
Artist.create!({ name: "Poisoned Huny", description: "Acrylics and Spray Paint", bio: " I’m an artist that mainly works with acrylics and spray paint. My work is a mix between abstract and realism. I love working with contrasting colors; greens with reds, blues with oranges, purples with yellows. Recently, my favorite items to paint have been the human body, plants, and bubbles.", image: "Justice3.jpeg", approved: true, highlighted: false })
Artist.create!({ name: "Asha", description: "Acrylics and Spray Paint", bio: "Hi my name is Asha. I am from Madison, Wisconsin and I am a biracial/Somali/Black American who is deeply committed to using as art as a form of resistance. This can be something surface level like painting Black women only due to the lack of representation I saw growing up while visiting art museums. Or women with exaggerated curves as a form of self care when I was teased for my hips during middle school. But I have also used art to push back against structures of whiteness. I have done this in my occupation as a PhD student by collecting narratives from Black educators who work in PWIs and representing these narratives visually. Then hanging these pieces predominately white spaces knowing that it will make white bodies uncomfortable.

The “white tears” painting is hanging in the education building at my school. It takes up a lot of space, it is bright, and it is bold. The viewer can not escape it when they are in the room and it has received many different reactions. For my Black colleagues, I have seen them taking pictures with it, excited that it is in the space, but I have also seen white students who while meeting in the room glance at it awkwardly, sometimes even laughing uncomfortably. It pushes back against dominant methodologies, confronts whiteness, and stirs an emotional reaction from the viewer. It functions as a tool of resistance.
  
If you would like to see more of my art and support my craft you can visit my artist website at brownsugababe.bigcartel.com", image: "Asha2.png", approved: true, highlighted: false })

Category.create!(name: "Cooking", image: "food.jpg")
Category.create!(name: "Decorative Arts", image: "categoryJewels.jpg")
Category.create!(name: "Painting", image: "paints.jpg")
Category.create!(name: "Words", image: "music.jpg")

ArtistCategory.create!(artist_id: 3, category_id: 1)
ArtistCategory.create!(artist_id: 2, category_id: 2)
ArtistCategory.create!(artist_id: 4, category_id: 3)
ArtistCategory.create!(artist_id: 1, category_id: 4)

FavoritedArtist.create!(status: "favorited", user_id: 1, artist_id: 2)
FavoritedArtist.create!(status: "favorited", user_id: 2, artist_id: 1)
FavoritedArtist.create!(status: "favorited", user_id: 2, artist_id: 4)
FavoritedArtist.create!(status: "favorited", user_id: 3, artist_id: 1)

Event.create!({ name: "Art Show", date: Date.new(2020, 06, 25), location: "2341 N Milwaukee Ave, Chicago, IL 60647", description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", image: "https://images.unsplash.com/photo-1514195037031-83d60ed3b448?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60" })
Event.create!({ name: "open mic", date: Date.new(2020, 06, 13), location: "3520 W Fullerton Ave, Chicago, IL 60647", description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image: "https://images.unsplash.com/photo-1527261834078-9b37d35a4a32?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60" })

ArtistEvent.create!(status: "saved", user_id: 1, event_id: 1, artist_id: 2)
ArtistEvent.create!(status: "saved", user_id: 2, event_id: 2, artist_id: 4)
