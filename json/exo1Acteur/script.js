fetch("margot-robbie.json")
    // .then est une promesse
    .then(
        // on charge le fichier et dès qu'il est chargé:
        (actor)=>
        // on le converti en json
        actor.json()
    )
    .then((data)=>{
        // notre fichier est converti en json
        // appeler notre fonction
        console.log(data);
        createActor(data);
    })
    function createActor(_data){
        let actorName = document.querySelector(".actor-name");
        let actorPicture = document.querySelector(".actor-picture");
        let actorMovies = document.querySelector(".actor-movies");
        actorName.innerHTML = _data.firstname + " " + _data.lastname;
        actorPicture.src = _data.picture;

        let moviesList = "";
        for(i=0; i < _data.movies.length; i++){
            let movie = _data.movies[i];
            moviesList += "<li>" + movie.name + "|" + movie.year + "</li>";
        }
        actorMovies.innerHTML=moviesList;
    }