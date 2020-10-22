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
  correct: "A$AP Rocky",
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
  correct: "DaBaby",
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
  correct: "Drake",
  genre: "rap",
  filename: "mp3s/Bottom.mp3"
)

Question.create(
  game_id: 1,
  ask: "Select the Artist",
  answer1: "A$AP Ferg",
  answer2: "Richy Rodd",
  answer3: "Chance the Rapper",
  answer4: "Roddy Ricch",
  correct: "Roddy Ricch",
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
  correct: "Missy Elliot",
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
  correct: "Migos",
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
  correct: "Kendrick Lamar",
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
  correct: "Childish Gambino",
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
  correct: "Kanye West",
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
  correct: "Eminem",
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
  correct: "Travis Scott",
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
  correct: "Notorious BIG",
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
  correct: "Jay-Z",
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
  correct: "Dr. Dre",
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
  correct: "Jack Harlow",
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
  correct: "Mac Miller",
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
  correct: "Kid Cudi",
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
  correct: "Cardi B",
  genre: "rap",
  filename: "mp3s/BodakYellow.mp3"
)


# ---------NAME THE SONG----------

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Pursuit of Happiness",
  answer2: "Day N Nite",
  answer3: "Cudi Zone",
  answer4: "Moon Man",
  correct: "Pursuit of Happiness",
  genre: "rap",
  filename: "mp3s/Pursuit.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "99 Problems",
  answer2: "Big Pimpin",
  answer3: "Dirt off Your Shoulders",
  answer4: "Welcome to the Party",
  correct: "Big Pimpin",
  genre: "rap",
  filename: "mp3s/BigPimpin.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Still D.R.E.",
  answer2: "Forgot About Dre",
  answer3: "California Love",
  answer4: "Nuthin but a G Thang",
  correct: "Forgot About Dre",
  genre: "rap",
  filename: "mp3s/ForgotDre.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Ghost",
  answer2: "Warsaw",
  answer3: "Thru the Night",
  answer4: "Whats Poppin",
  correct: "Whats Poppin",
  genre: "rap",
  filename: "mp3s/WhatsPoppin.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Come Back to Earth",
  answer2: "Ladders",
  answer3: "Hurt Feelings",
  answer4: "Self Care",
  correct: "Ladders",
  genre: "rap",
  filename: "mp3s/Ladders.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "3005",
  answer2: "Redbone",
  answer3: "Bonfire",
  answer4: "Camp",
  correct: "Redbone",
  genre: "rap",
  filename: "mp3s/Redbone.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "All of the Lights",
  answer2: "Heartless",
  answer3: "Famous",
  answer4: "Runaway",
  correct: "Runaway",
  genre: "rap",
  filename: "mp3s/Runaway.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Stan",
  answer2: "Lose Yourself",
  answer3: "Love the Way You Lie",
  answer4: "The Way I Am",
  correct: "Stan",
  genre: "rap",
  filename: "mp3s/Stan.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Yosemite",
  answer2: "Goosbumps",
  answer3: "Butterfly Effect",
  answer4: "Sicko Mode",
  correct: "Butterfly Effect",
  genre: "rap",
  filename: "mp3s/Butterfly.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Big Poppa",
  answer2: "Dear Mama",
  answer3: "Molly",
  answer4: "Hypnotize",
  correct: "Hypnotize",
  genre: "rap",
  filename: "mp3s/Hypnotize.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Started From the Bottom",
  answer2: "6 God",
  answer3: "Worst Behavior",
  answer4: "Hotline Bling",
  correct: "Started From the Bottom",
  genre: "rap",
  filename: "mp3s/Bottom.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Die Young",
  answer2: "The Box",
  answer3: "High Fashion",
  answer4: "Ballin",
  correct: "The Box",
  genre: "rap",
  filename: "mp3s/Box.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Get Your Freak On",
  answer2: "1 2 Step",
  answer3: "Work It",
  answer4: "Lose Control",
  correct: "Get Your Freak On",
  genre: "rap",
  filename: "mp3s/Freak.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Pure Water",
  answer2: "Versace",
  answer3: "Bad and Boujee",
  answer4: "Motorsport",
  correct: "Pure Water",
  genre: "rap",
  filename: "mp3s/PureWater.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "Money Trees",
  answer2: "MAAD City",
  answer3: "Good Kid",
  answer4: "Backseat Freestyle",
  correct: "Backseat Freestyle",
  genre: "rap",
  filename: "mp3s/BackseatFreestyle.mp3"
)

Question.create(
  game_id: 1,
  ask: "Name the Song",
  answer1: "L$D",
  answer2: "LVL",
  answer3: "Goldie",
  answer4: "Praise The Lord",
  correct: "Goldie",
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
  correct: "Bop",
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
  correct: "Bop",
  genre: "rap",
  filename: "mp3s/BodakYellow.mp3"
)
