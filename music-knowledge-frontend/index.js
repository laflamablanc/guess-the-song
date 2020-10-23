document.addEventListener('DOMContentLoaded', e => {

  const song = document.getElementById('audio')

  let questionId = 1
  let score= 0
  let round = 1
  let userId = 0
  let gameId = 0
  let genre = ""

  const questionUrl = 'http://localhost:3000/questions/'
  const getQuestions = () => {
    fetch('http://localhost:3000/questions/1')
    .then(response => response.json())
    .then(data => {

    })
  }



  const renderNewGame = () => {
    gameDuration = 15
    const header = document.getElementById('page-header')
    const title = document.createElement('h2')
    title.textContent = "New Game"
    const form = document.createElement('form')
    form.innerHTML = `
     <input type="text" id="username" name="username" placeholder = "Type Username"><br>
     <button class = "play-button"type="submit" value="Play">🎵</button>
     `
    header.append(title, form)
    form.addEventListener('submit', e => {
      e.preventDefault()
      const username = e.target.username.value
      createUser(username)
      const timerTable = document.getElementById('timers')

      // renderQuestion()
      chooseGenre()
      timerTable.style.display = 'inline'

    })

  }

  const createUser = (username) => {
    const userOptions = {
      method: "POST" ,
      headers:{
        "content-type" : "application/json",
        "accept" : "application/json"
      },
      body: JSON.stringify(
        {name: username}
      )
    }

    fetch('http://localhost:3000/users', userOptions)
    .then(response => response.json())
    .then(data => {
      userId = data.id
      createGame(0, userId)
    })
  }

  const createGame = (score, userId) => {
    const gameOptions = {
      method: "POST" ,
      headers:{
        "content-type" : "application/json",
        "accept" : "application/json"
      },
      body: JSON.stringify(
        {
          score: score,
          user_id: userId
        })
    }
    fetch('http://localhost:3000/games/', gameOptions)
    .then(response => response.json())
    .then(data => {
      gameId = data.id
    })
  }

  const playAudio = (audioFilepath) => {
    song.src = audioFilepath
    song.play();
  };

  const pauseAudio = (audioFilepath) => {
    song.pause();
  };

  const chooseGenre = () => {
    const mainDiv = document.getElementById('page-header')
    mainDiv.innerHTML = ''
    const genreSelector = document.createElement('div')
    genreSelector.id = "genre-selector"
    genreSelector.innerHTML =`
    <h2>Select a Genre:</h2>
    <button id="rap" class= "play-buttons" data-genre = "rap" type="button">🎤 Rap 🎤</button>
    <button id="rock" class= "play-buttons" data-genre = "rock" type="button">🎸 Rock 🎸</button>
    `
    mainDiv.append(genreSelector)
    genreSelector.addEventListener('click', e => {
      if (e.target.matches('#rap')) {
        questionId = 1
        genre = "rap"
        chooseDifficulty()
      } else if (e.target.matches('#rock')) {
        questionId = 37
        genre = "rock"
        chooseDifficulty()
      }
    })
  }

  const chooseDifficulty = () => {
    const mainDiv = document.getElementById('page-header')
    mainDiv.innerHTML = ''
    const difficultySelector = document.createElement('div')
    difficultySelector.id = "difficulty-selector"
    difficultySelector.innerHTML =`
    <h2>Select a Difficulty:</h2>
    <button id="easy" class= "play-buttons" data-difficulty = "easy" type="button">💚Easy💚</button>
    <button id="medium" class= "play-buttons" data-difficulty = "medium" type="button">🧡Medium🧡</button>
    <button id="hard" class= "play-buttons" data-difficulty = "hard" type="button">🚨Hard🚨</button>
    `
    mainDiv.append(difficultySelector)
    difficultySelector.addEventListener('click', e => {
      if (e.target.matches('#easy')) {
        gameDuration = 60
        resetDuration = 60
        displayRound()
      } else if (e.target.matches('#medium')) {
          gameDuration = 30
          resetDuration = 30
          displayRound()
      } else if (e.target.matches('#hard')) {
          gameDuration = 15
          resetDuration = 15
          displayRound()
      }
    })
  }


  const displayRound = () => {
    const mainDiv = document.getElementById('page-header')
    mainDiv.innerHTML = ''
    const roundContainer = document.createElement('div')
    roundContainer.id = "question-container"
    roundContainer.innerHTML =`
    <h2>Round ${round}</h2>
    <button class= "play-buttons" data-choice = " " type="button">Start Round</button>
    `
    mainDiv.append(roundContainer)
    roundContainer.addEventListener('click', e => {
      if (e.target.matches('[data-choice]')) {
        renderQuestion()
        startGameTimer()

      }
    })
  }

  const renderQuestion = () => {
    fetch(questionUrl + questionId)
    .then(response => response.json())
    .then(data => {
      let filename = data.filename
      const mainDiv = document.getElementById('page-header')
      mainDiv.innerHTML = ''
      const questionContainer = document.createElement('div')
      questionContainer.id = "question-container"
      questionContainer.innerHTML =`

      <h2>${data.ask}</h2>
      <p>SCORE: ${score}</p>
      <div class = "button-grid">
        <button class= "button-choice" data-choice = " " type="button">${data.answer1}</button>
        <button class= "button-choice" data-choice = " " type="button">${data.answer2}</button>
        <button class= "button-choice" data-choice = " " type="button">${data.answer3}</button>
        <button class= "button-choice" data-choice = " " type="button">${data.answer4}</button>
      </div>
      <div class = "">
        <button class= "play-buttons" data-play= '${data.filename}'> ▶️ </button>
        <button class= "play-buttons" data-pause= '${data.filename}'> ⏸ </button>
      </div>
      <div id='correct' style="visibility: hidden">${data.correct}</div>

      `


      mainDiv.append(questionContainer)
      playAudio(filename)
      questionContainer.addEventListener('click', e => {
        if (e.target.matches('[data-play]')) {
          let filename = e.target.dataset.play  //dont touch
          playAudio(filename)
        } else if (e.target.matches('[data-pause]')) {
          let filename = e.target.dataset.pause  //dont touch
          pauseAudio(filename)
        }
      })

    })

  }
  const clickHandler = ()=>{

    document.addEventListener('click', e =>{

      if(e.target.matches(`[data-choice]`)){
        let button = e.target
        let correctAnswer = document.getElementById('correct')

        if (correctAnswer){
          if (button.textContent === correctAnswer.textContent){
            score = score + 100
          } else {
            score = score -50
          }
          questionId++
          renderQuestion()
        }

      }

    })
  }


  // ----timer code-----
  let gameDuration = 60
  let resetDuration = 0
  let gameSecElapsed = 0
  var gameInterval;

  let gameTimerEl = document.querySelector("#gameTimer");
  let timerTab = document.querySelector("#timers");
  var test = false;

  clickHandler()
  getQuestions()
  renderNewGame()

  function startGameTimer () {
    if (test) { console.log("--- startGameTimer ---"); }
    setGameTime();

    gameInterval = setInterval(function() {
      gameSecElapsed++;
      renderTime();
    }, 1000);
  }

  function setGameTime() {
    if (test) { console.log("--- setGameTime ---"); }
    if (test) { console.log("gameDuration " + gameDuration); }
    clearInterval(gameInterval);
  }

  function renderTime() {

    gameTimerEl.textContent = gameDuration - gameSecElapsed;

    if ((gameDuration - gameSecElapsed) < 1 ) {
      console.log(genre)
      if (round === 1 && genre === "rap") {
        clearInterval(gameInterval)
        gameDuration = resetDuration
        gameSecElapsed = 0
        questionId = 19
        round++
        console.log(questionId)
        song.pause()
        displayRound()
        changeTimerGreen()
      }
      else if (round === 1 && genre === "rock"){
        clearInterval(gameInterval)
        gameDuration = resetDuration
        gameSecElapsed = 0
        questionId = 52
        console.log(questionId)
        round++
        song.pause()
        displayRound()
        changeTimerGreen()
      }
      else {
        console.log(round)
        endOfGame();
        sendScore()
      }
    } else if ((gameDuration - gameSecElapsed) === 9) {
      changeTimerRed()
    }
  }

  function endOfGame(){

    console.log('Game Over')
    clearInterval(gameInterval);
    // const questionContainer = document.getElementById('question-container')
    // questionContainer.innerHTML = `Your Score: ${score}`
    song.pause()

  }

  function sendScore(){

    const gameOptions = {
      method: "PATCH" ,
      headers:{
        "content-type" : "application/json",
        "accept" : "application/json"
      },
      body: JSON.stringify(
        {score: score}
      )
    }

    fetch('http://localhost:3000/games/'+gameId, gameOptions)
    .then(response => response.json())
    .then(data => {
      displayScore(data.score)
    })

  }

  function highScores(){
    fetch('http://localhost:3000/games/')
    .then(response => response.json())
    .then(data => {
      const questionContainer = document.getElementById('question-container')
      scoreList = document.createElement('ol')
      for (const highscore of data) {
        scoreLi = document.createElement('li')
        scoreLi.textContent = `User: ${highscore.user_id} - Score: ${highscore.score}`
        scoreList.append(scoreLi)
      }
      questionContainer.append(scoreList)
    })
  }

  function displayScore(score){
    const questionContainer = document.getElementById('question-container')
    questionContainer.innerHTML = `
    <h2>Your Score: ${score}</h2>
    <button class= "play-again">🔁Play Again 🔁</button>
    <button class= "view-scores">🎶View Scores🎶</button>
    `
    const playAgain = questionContainer.querySelector('.play-again')
    playAgain.addEventListener('click', e => {
      location.reload();
    })
    const viewScores = questionContainer.querySelector('.view-scores')
    viewScores.addEventListener('click', e => {
      questionContainer.innerHTML = ""
      highScores()
    })
  }

 function changeTimerRed(){
    let timer = document.getElementById('timers')
    timer.style.color= 'red'
  }

  function changeTimerGreen(){
    let timer = document.getElementById('timers')
    timer.style.color= 'rgb(18, 212, 18)'
  }






})
