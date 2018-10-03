require 'faker'
movies = Movie.create([
    { title: "Star Wars: Episode IV - A New Hope" ,
    photo_url: "https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,643,1000_AL_.jpg",
    release_year: "1977",
    synopsis: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the evil Darth Vader."},
   { title: "The Lord of the Rings: The Fellowship of the Ring",
    photo_url: "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SY999_CR0,0,673,999_AL_.jpg",
    release_year: "2001",
    synopsis: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron."}])
   

    Show.create([{ title: "Breaking Bad" ,
    photo_url: "https://m.media-amazon.com/images/M/MV5BZDNhNzhkNDctOTlmOS00NWNmLWEyODQtNWMxM2UzYmJiNGMyXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_UY268_CR4,0,182,268_AL_.jpg",
    release_year: "2008",
    synopsis: "A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family's future."},
    {title: "Band of Brothers ",
    photo_url: "https://m.media-amazon.com/images/M/MV5BMTI3ODc2ODc0M15BMl5BanBnXkFtZTYwMjgzNjc3._V1_UX182_CR0,0,182,268_AL_.jpg",
    release_year: "2001",
    synopsis: "The story of Easy Company of the U.S. Army 101st Airborne Division, and their mission in World War II Europe, from Operation Overlord, through V-J Day."},
   { title: "Rick and Morty",
    photo_url: "https://m.media-amazon.com/images/M/MV5BMjRiNDRhNGUtMzRkZi00MThlLTg0ZDMtNjc5YzFjYmFjMmM4XkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UY268_CR2,0,182,268_AL_.jpg",
    release_year: "2013",
    synopsis: "An animated series that follows the exploits of a super scientist and his not-so-bright grandson."}])


    50.times do
        Movie.create({title: Faker::Name.name,
        photo_url: Faker::LoremPixel.image,
        release_year: Faker::Date.backward(5000),
        synopsis: Faker::Lorem.sentence(3)})
        end

        50.times do
            Show.create({title: Faker::Name.name,
            photo_url: Faker::LoremPixel.image,
            release_year: Faker::Date.backward(5000),
            synopsis: Faker::Lorem.sentence(3)})
            end