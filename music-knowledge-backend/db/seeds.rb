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
  answer1: "A$AP Rocky",
  answer2: "Roddy Rich",
  answer3: "DaBaby",
  answer4: "Flava Flav",
  name: "Goldie",
  artist: "DaBaby",
  genre: "rap",
  filename: "mp3s/BOP.mp3"
)

Question.create(
  game_id: 1,
  answer1: "A$AP Rocky",
  answer2: "Drake",
  answer3: "Young Thug",
  answer4: "Flava Flav",
  name: "Goldie",
  artist: "Drake",
  genre: "rap",
  filename: "mp3s/Bottom.mp3"
)

Question.create(
  game_id: 1,
  answer1: "A$AP Rocky",
  answer2: "Roddy Rich",
  answer3: "Young Thug",
  answer4: "Roddie Rich",
  name: "Goldie",
  artist: "Roddie Rich",
  genre: "rap",
  filename: "mp3s/Box.mp3"
)

Question.create(
  game_id: 1,
  answer1: "Missy Elliot",
  answer2: "Roddy Rich",
  answer3: "Young Thug",
  answer4: "Flava Flav",
  name: "Goldie",
  artist: "Missy Elliot",
  genre: "rap",
  filename: "mp3s/Freak.mp3"
)

Question.create(
  game_id: 1,
  answer1: "A$AP Rocky",
  answer2: "Roddy Rich",
  answer3: "Young Thug",
  answer4: "Migos",
  name: "Goldie",
  artist: "Migos",
  genre: "rap",
  filename: "mp3s/PureWater.mp3"
)

Question.create(
  game_id: 1,
  answer1: "A$AP Rocky",
  answer2: "Kendrick Lamar",
  answer3: "Young Thug",
  answer4: "Flava Flav",
  name: "Backseat FreeStyle",
  artist: "Kendrick Lamar",
  genre: "rap",
  filename: "mp3s/BackseatFreestyle.mp3"
)

Question.create(
  game_id: 1,
  answer1: "Childish Gambino",
  answer2: "Roddy Rich",
  answer3: "Young Thug",
  answer4: "Flava Flav",
  name: "Redbone",
  artist: "Childish Gambino",
  genre: "rap",
  filename: "mp3s/Redbone.mp3"
)

Question.create(
  game_id: 1,
  answer1: "A$AP Rocky",
  answer2: "Roddy Rich",
  answer3: "Young Thug",
  answer4: "Kanye West",
  name: "Goldie",
  artist: "Kanye West",
  genre: "rap",
  filename: "mp3s/Runaway.mp3"
)

Question.create(
  game_id: 1,
  answer1: "A$AP Rocky",
  answer2: "Eminem",
  answer3: "Young Thug",
  answer4: "Flava Flav",
  name: "Goldie",
  artist: "Eminem",
  genre: "rap",
  filename: "mp3s/Stan.mp3"
)
