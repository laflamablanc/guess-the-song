// document.addEventListener('DOMContentLoaded', e => {
//
//   let gameDuration = 60
//   let gameSecElapsed = 0
//   var gameInterval;
//
//   let gameTimerEl = document.querySelector("#gameTimer");
//   let timerTab = document.querySelector("#timers");
//   var test = false;
//
//
//
//   function startGameTimer () {
//     if (test) { console.log("--- startGameTimer ---"); }
//     setGameTime();
//
//     gameInterval = setInterval(function() {
//       gameSecElapsed++;
//       renderTime();
//     }, 1000);
//   }
//
//   function setGameTime() {
//     if (test) { console.log("--- setGameTime ---"); }
//     if (test) { console.log("gameDuration " + gameDuration); }
//     clearInterval(gameInterval);
//     gameSeconds = gameDuration;
//   }
//
//   function renderTime() {
//
//     gameTimerEl.textContent = gameDuration - gameSecElapsed;
//
//     if ((gameDuration - gameSecElapsed) < 1 ) {
//      endOfGame();
//     }
//   }
//
//   function endOfGame(){
//     console.log('Game Over')
//   }
//
//   startGameTimer()
// })
