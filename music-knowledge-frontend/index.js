document.addEventListener('DOMContentLoaded', e => {

  const song = document.getElementById('audio')

  // const questionId = Math.floor(Math.random() * 10) + 1
  let questionId = 1
  let score= 0
  const questionUrl = 'http://localhost:3000/questions/'
  const getQuestions = () => {
    fetch('http://localhost:3000/questions/1')
    .then(response => response.json())
    .then(data => {

    })
  }



  const renderNewGame = () => {
    const header = document.getElementById('page-header')
    const title = document.createElement('h2')
    title.textContent = "New Game"
    const form = document.createElement('form')
    form.innerHTML = `
      <label for="username" class="hidden"> Username:</label><br>
      <input type="text" id="username" name="username" placeholder = "Type Username"><br>
      <input type="submit" value="Play">
      `
    header.append(title, form)
    form.addEventListener('submit', e => {
      e.preventDefault()
      const username = e.target.username.value
      createUser(username)
      renderQuestion()


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
      createGame(0, data.id)
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
    fetch('http://localhost:3000/games', gameOptions)
    .then(response => response.json())
    .then(data => {
      // renderQuestions(data.id)
    })
  }

  const playAudio = (audioFilepath) => {
    song.src = audioFilepath
    song.play();
  };

  const pauseAudio = (audioFilepath) => {
    song.pause();
  };

  const renderQuestion = () => {

    fetch(questionUrl + questionId)
    .then(response => response.json())
    .then(data => {
      let filename = data.filename

      // song.src = filename

      const mainDiv = document.getElementById('page-header')
      mainDiv.innerHTML = ''
      const questionContainer = document.createElement('div')
      questionContainer.id = "question-container"
      questionContainer.innerHTML =
      `<h2>name the artist</h2>
      <p>${score}</p>
      <button data-choice= "wrong" type="button">${data.fake1}</button>
      <button data-choice= "wrong" type="button">${data.fake2}</button>
      <button data-choice= "wrong" type="button">${data.fake3}</button>
      <button data-choice= "correct" type="button">${data.correct}</button>
      <button data-play= '${data.filename}'> Play Audio </button>
      <button data-pause= '${data.filename}'> Pause Audio </button>
      `

      mainDiv.append(questionContainer)

      questionContainer.addEventListener('click', e => {
        if (e.target.matches('[data-play]')) {
          let filename = e.target.dataset.play
          playAudio(filename)
        } else if (e.target.matches('[data-pause]')) {
          let filename = e.target.dataset.pause
          pauseAudio(filename)

        }
      })

    })

  }
  const clickHandler = ()=>{

    document.addEventListener('click', e =>{

      if(e.target.matches(`[data-choice='wrong']`)){
        score = score -1
        questionId++
        console.log("id", questionId)
        console.log("score" ,score)
        renderQuestion()

      }
      else if(e.target.matches(`[data-choice='correct']`)){
        score = score + 1
        questionId++
        console.log('id', questionId)
        console.log('score', score)
        renderQuestion()
      }
    })
  }




  clickHandler()
  getQuestions()
  renderNewGame()

})
