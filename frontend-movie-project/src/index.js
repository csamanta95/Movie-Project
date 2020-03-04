let movies = []
// let currentMovieId = 0;
const movieArea = document.querySelector("#movies-container")
const detailDiv = document.querySelector("#detail")


function renderMoviesList(movies) {
    movies.forEach(movie => renderEachMovie(movie))
}

function renderEachMovie(movieObj) {
    const movieLi = document.createElement("li")
    movieLi.className = "item"
    // movieLi.setAttribute("movie-id", movieObj.id)
    // movieLi.innerText = `${movieObj.title}`
    movieLi.innerHTML = `
    <h4 class="item">${movieObj.title}</h4>
    <button data-id="${movieObj.id}" class="delete-button">X</button>`
    movieArea.append(movieLi)
    const deleteBtn2 = movieLi.querySelector(".delete-button")
    deleteBtn2.addEventListener("click", event => {
        movieLi.remove() 
        
        fetch(`http://localhost:3000/movies/${movieObj.id}`, {
        method: "DELETE"
        })
    })

    movieLi.addEventListener("click", () => {
        renderMovieDetail(movieObj)
    })


const newForm = document.querySelector("#new-movie-form")
newForm.addEventListener("submit", handleSubmit)

}

//-----------------------------
function renderMovieDetail(movieObj) {
    // const detailDiv = document.querySelector("#detail")
    const newElement = document.createElement("div")
    newElement.innerHTML = `
    <h1>${movieObj.title}</h1>
    <h2> ${movieObj.release_year}</h2> 
    `
    let scenesArray = movieObj.scenes
    scenesArray.forEach( scene => {
        newElement.innerHTML += `
        <br>
        <img src=${scene.image_url} alt=${movieObj.title}>
        <p class="description">
        ${scene.description}
        </p> 
        <br>
        `
    } )
    detailDiv.textContent = ""
    detailDiv.append(newElement)
    // currentMovieId = movieObj.id
    newElement.innerHTML +=
    `
    <div id="modal2" style="display: none;" data-action="close">
    <form id="new-scene-form">
    <h1>Create New Scene</h1>
    <label class = "image" for="image_url">Image URL</label>
    <input type="url" name="image_url">
    <label for="description">Description</label>
    <textarea name="description" rows="2"></textarea>
    <input type="submit" value="Create Scene">
  </form>`

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

    const newFormTwo = document.querySelector("#new-scene-form")
    newFormTwo.addEventListener("submit", event => {
        event.preventDefault()
        const formInfoTwo = {
            movie_id: movieObj.id,
            image_url: newFormTwo.image_url.value,
            description: newFormTwo.description.value
        }
        fetch("http://localhost:3000/scenes", {
            method: "POST",
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify(formInfoTwo)
        })
        .then(res => res.json())
        .then(movie => {
            // scenesArray.push(movie)
            renderMovieDetail(movie)
    
        })
        // event.target.reset() 
    })
    
}



const handleSubmit = (event) => {
    event.preventDefault()
    
    const newForm = document.querySelector("#new-movie-form")
    const formInfo = {
        title: newForm.title.value,
        release_year: newForm.release_year.value,
        // image: newForm.image_url.value,
        // description: newForm.description.value
    }
    fetch("http://localhost:3000/movies", {
        method: "POST",
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        },
        body: JSON.stringify(formInfo) 
    })
    .then( res => res.json())
    .then(results => {
        movies.push(results)
        renderMovieDetail(results)
        movieArea.innerHTML = ""
        renderMoviesList(movies)
    })

    modal.style.display = "none"
    event.target.reset() 
}




fetch("http://localhost:3000/movies")
.then(response => response.json())
.then(moviesArr => {
    movies = moviesArr
    renderMoviesList(movies)
    // detailDiv.innerHTML = ""
    renderMovieDetail(movies[0])
})