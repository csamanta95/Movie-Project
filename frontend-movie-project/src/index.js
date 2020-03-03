let movies = []
const movieArea = document.querySelector("#movies-container")
const detailDiv = document.querySelector("#detail")

function renderMoviesList(movies) {
    movies.forEach(movie => renderEachMovie(movie))
}

function renderEachMovie(movieObj) {
    const movieLi = document.createElement("li")
    movieLi.className = "item"
    movieLi.setAttribute("movie-id", movieObj.id)
    movieLi.innerText = `${movieObj.title}`
    movieArea.append(movieLi)

    movieLi.addEventListener("click", () => {
        renderMovieDetail(movieObj)
    })


const newForm = document.querySelector("#new-movie-form")
newForm.addEventListener("submit", handleSubmit)

}

//-----------------------------
function renderMovieDetail(movieObj) {
    const detailDiv = document.querySelector("#detail")
    const newElement = document.createElement("div")
    newElement.innerHTML = `
    <h1>${movieObj.title}</h1>
    <h2> ${movieObj.release_year}</h2>
    `
    movieObj.scenes.forEach( scene => {
        newElement.innerHTML += `
        <img src=${scene.image_url} alt=${movieObj.title}>
        <p class="description">
        ${scene.description}
        </p> `
    } )
    detailDiv.textContent = ""
    detailDiv.append(newElement)

    const newFormTwo = document.querySelector("#new-scene-form")
    console.log(newFormTwo)
    newFormTwo.addEventListener("submit", handleSubmitTwo)


}

const handleSubmitTwo = (event) => {
    event.preventDefault()
    
    const newFormTwo = document.querySelector("#new-scene-form")
    const formInfoTwo = {
        image_url: newFormTwo.image_url.value,
        description: newFormTwo.description.value
    }
    console.log(newFormTwo.image_url.value)
    fetch("http://localhost:3000/scenes", {
        method: "POST",
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        },
        body: JSON.stringify(formInfoTwo)
    })
    .then(res => res.json())
    .then(results => {
        detailDiv.push(results)
        
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
        console.log(results)
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
    renderMovieDetail(movies[0])
})