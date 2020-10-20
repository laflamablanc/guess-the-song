document.addEventListener('DOMContentLoaded', e => {
  let questionArray = []
  const getQuestions = () => {
    fetch('http://localhost:3000/questions')
    .then(response => response.json())
    .then(data => {
      questionArray = data
    })
  }

  // questionArray.forEach(e => {
  //   console.log("hey")
  // })

  console.log(questionArray)
  // console.log(questionArray[0])

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
      createGame()
      // renderQuestions()
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
      // createGame(0, data.id)
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
          user_id: 10
        })
    }
    fetch('http://localhost:3000/games', gameOptions)
    .then(response => response.json())
    // .then(data => {
    //   console.log(data)
    //   // renderQuestions(data.id)
    // })
  }

  const renderQuestions = () => {

  }
//
  getQuestions()
  renderNewGame()
  createGame()
//
})
