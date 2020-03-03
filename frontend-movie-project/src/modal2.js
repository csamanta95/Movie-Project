const modal2 = document.querySelector("#modal2")
let playBtn2 = document.querySelector('#make-scene-button')

playBtn2.addEventListener('click', event => {
    modal2.style.display = "block"
})
// Hide the form
modal2.addEventListener("click", e => {
  if (e.target.dataset.action === "close") {
    modal2.style.display = "none"
  }
})

