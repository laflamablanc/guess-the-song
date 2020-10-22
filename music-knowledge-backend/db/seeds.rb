# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Mamadou")
User.create(name: "Sean")

Game.create(score: 0, user_id: 1)
Game.create(score:0, user_id: 2)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "A$AP Rocky",
  answer2: "Roddy Rich",
  answer3: "Young Thug",
  answer4: "Flava Flav",
  name: "Goldie",
  artist: "A$AP Rocky",
  genre: "rap",
  filename: "mp3s/Goldie.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Lil Baby",
  answer2: "Baby",
  answer3: "DaBaby",
  answer4: "The Adult",
  name: "Bop",
  artist: "DaBaby",
  genre: "rap",
  filename: "mp3s/BOP.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Kanye West",
  answer2: "Drake",
  answer3: "Young Thug",
  answer4: "Eminem",
  name: "Started From the Bottom",
  artist: "Drake",
  genre: "rap",
  filename: "mp3s/Bottom.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "A$AP Ferg",
  answer2: "Richie Rod",
  answer3: "Chance the Rapper",
  answer4: "Roddie Rich",
  name: "Goldie",
  artist: "Roddie Rich",
  genre: "rap",
  filename: "mp3s/Box.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Missy Elliot",
  answer2: "Lil Kim",
  answer3: "Xzibit",
  answer4: "Timbaland",
  name: "Goldie",
  artist: "Missy Elliot",
  genre: "rap",
  filename: "mp3s/Freak.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Cam'ron",
  answer2: "Diddy",
  answer3: "Kanye West",
  answer4: "Migos",
  name: "Goldie",
  artist: "Migos",
  genre: "rap",
  filename: "mp3s/PureWater.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "J. Cole",
  answer2: "Kendrick Lamar",
  answer3: "Chamillionaire",
  answer4: "Ludacris",
  name: "Backseat FreeStyle",
  artist: "Kendrick Lamar",
  genre: "rap",
  filename: "mp3s/BackseatFreestyle.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Childish Gambino",
  answer2: "Chance the Rapper",
  answer3: "Boyz II Men",
  answer4: "Prince",
  name: "Redbone",
  artist: "Childish Gambino",
  genre: "rap",
  filename: "mp3s/Redbone.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "A$AP Rocky",
  answer2: "Roddy Rich",
  answer3: "Young Thug",
  answer4: "Kanye West",
  name: "Runaway",
  artist: "Kanye West",
  genre: "rap",
  filename: "mp3s/Runaway.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Ja Rule",
  answer2: "50 Cent",
  answer3: "Eminem",
  answer4: "Vanilla Ice",
  name: "Stan",
  artist: "Eminem",
  genre: "rap",
  filename: "mp3s/Stan.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "A$AP Rocky",
  answer2: "Eminem",
  answer3: "Travis Scott",
  answer4: "Migos",
  name: "Stan",
  artist: "Travis Scott",
  genre: "rap",
  filename: "mp3s/Butterfly.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Mase",
  answer2: "Notorious BIG",
  answer3: "Diddy",
  answer4: "Tupac",
  name: "Goldie",
  artist: "Notorious BIG",
  genre: "rap",
  filename: "mp3s/Hypnotize.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Jay-Z",
  answer2: "Snoop Dogg",
  answer3: "Nas",
  answer4: "Jadakiss",
  name: "Goldie",
  artist: "Jay-Z",
  genre: "rap",
  filename: "mp3s/BigPimpin.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Ice T",
  answer2: "Ludacris",
  answer3: "Ice Cube",
  answer4: "Dr. Dre",
  name: "Forgot About Dre",
  artist: "Dr. Dre",
  genre: "rap",
  filename: "mp3s/ForgotDre.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Mac Miller",
  answer2: "Lil Dicky",
  answer3: "Eminem",
  answer4: "Vanilla Ice",
  name: "Whats Poppin",
  artist: "Jack Harlow",
  genre: "rap",
  filename: "mp3s/WhatsPoppin.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Macklemore",
  answer2: "Eminem",
  answer3: "Post Malone",
  answer4: "Jack Harlow",
  name: "Ladders",
  artist: "Mac Miller",
  genre: "rap",
  filename: "mp3s/Ladders.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Earl Sweatshirt",
  answer2: "Outkast",
  answer3: "Young Thug",
  answer4: "Kid Cudi",
  name: "Pursit of Happiness",
  artist: "Kid Cudi",
  genre: "rap",
  filename: "mp3s/Pursuit.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "Nicki Minaj",
  answer2: "Cardi B",
  answer3: "Lil Kim",
  answer4: "Missy Elliot",
  name: "Bodak Yellow",
  artist: "Cardi B",
  genre: "rap",
  filename: "mp3s/BodakYellow.mp3"
)


# ---------NAME THE SONG----------

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Earl Sweatshirt",
  answer2: "Outkast",
  answer3: "Young Thug",
  answer4: "Kid Cudi",
  name: "Pursit of Happiness",
  artist: "Kid Cudi",
  genre: "rap",
  filename: "mp3s/Pursuit.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Jay-Z",
  answer2: "Snoop Dogg",
  answer3: "Nas",
  answer4: "Jadakiss",
  name: "Goldie",
  artist: "Jay-Z",
  genre: "rap",
  filename: "mp3s/BigPimpin.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Ice T",
  answer2: "Ludacris",
  answer3: "Ice Cube",
  answer4: "Dr. Dre",
  name: "Forgot About Dre",
  artist: "Dr. Dre",
  genre: "rap",
  filename: "mp3s/ForgotDre.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Mac Miller",
  answer2: "Lil Dicky",
  answer3: "Eminem",
  answer4: "Vanilla Ice",
  name: "Whats Poppin",
  artist: "Jack Harlow",
  genre: "rap",
  filename: "mp3s/WhatsPoppin.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Macklemore",
  answer2: "Eminem",
  answer3: "Post Malone",
  answer4: "Jack Harlow",
  name: "Ladders",
  artist: "Mac Miller",
  genre: "rap",
  filename: "mp3s/Ladders.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Childish Gambino",
  answer2: "Chance the Rapper",
  answer3: "Boyz II Men",
  answer4: "Prince",
  name: "Redbone",
  artist: "Childish Gambino",
  genre: "rap",
  filename: "mp3s/Redbone.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "A$AP Rocky",
  answer2: "Roddy Rich",
  answer3: "Young Thug",
  answer4: "Kanye West",
  name: "Runaway",
  artist: "Kanye West",
  genre: "rap",
  filename: "mp3s/Runaway.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Ja Rule",
  answer2: "50 Cent",
  answer3: "Eminem",
  answer4: "Vanilla Ice",
  name: "Stan",
  artist: "Eminem",
  genre: "rap",
  filename: "mp3s/Stan.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "A$AP Rocky",
  answer2: "Eminem",
  answer3: "Travis Scott",
  answer4: "Migos",
  name: "Stan",
  artist: "Travis Scott",
  genre: "rap",
  filename: "mp3s/Butterfly.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Mase",
  answer2: "Notorious BIG",
  answer3: "Diddy",
  answer4: "Tupac",
  name: "Goldie",
  artist: "Notorious BIG",
  genre: "rap",
  filename: "mp3s/Hypnotize.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Kanye West",
  answer2: "Drake",
  answer3: "Young Thug",
  answer4: "Eminem",
  name: "Started From the Bottom",
  artist: "Drake",
  genre: "rap",
  filename: "mp3s/Bottom.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "A$AP Ferg",
  answer2: "Richie Rod",
  answer3: "Chance the Rapper",
  answer4: "Roddie Rich",
  name: "Goldie",
  artist: "Roddie Rich",
  genre: "rap",
  filename: "mp3s/Box.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Missy Elliot",
  answer2: "Lil Kim",
  answer3: "Xzibit",
  answer4: "Timbaland",
  name: "Goldie",
  artist: "Missy Elliot",
  genre: "rap",
  filename: "mp3s/Freak.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Cam'ron",
  answer2: "Diddy",
  answer3: "Kanye West",
  answer4: "Migos",
  name: "Goldie",
  artist: "Migos",
  genre: "rap",
  filename: "mp3s/PureWater.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: " ",
  answer2: "Kendrick Lamar",
  answer3: "Chamillionaire",
  answer4: "Ludacris",
  name: "Backseat FreeStyle",
  artist: "Kendrick Lamar",
  genre: "rap",
  filename: "mp3s/BackseatFreestyle.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Forever",
  answer2: "Swagger",
  answer3: "Goldie",
  answer4: "Problems",
  name: "Goldie",
  artist: "A$AP Rocky",
  genre: "rap",
  filename: "mp3s/Goldie.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Bop",
  answer2: "Boop",
  answer3: "Beep",
  answer4: "Baba",
  name: "Bop",
  artist: "DaBaby",
  genre: "rap",
  filename: "mp3s/BOP.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "I Like It",
  answer2: "Money",
  answer3: "WAP",
  answer4: "Bodak Yellow",
  name: "Bop",
  artist: "Cardi B",
  genre: "rap",
  filename: "mp3s/BodakYellow.mp3"
)
