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
  correct: "Drake",
  fake1: "Roddy Rich",
  fake2: "Young Thug",
  fake3: "Flava Flav",
  filename: "assest/1.mp3"
)

Question.create(
  game_id: 1,
  correct: "Drake",
  fake1: "Roddy Rich",
  fake2: "Young Thug",
  fake3: "Flava Flav",
  filename: "assest/2.mp3"
)
Question.create(
  game_id: 1,
  correct: "Drake",
  fake1: "Roddy Rich",
  fake2: "Young Thug",
  fake3: "Flava Flav",
  filename: "assest/3.mp3"
)
