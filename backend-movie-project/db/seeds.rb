# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
Scene.destroy_all


# Movies seed
m1 = Movie.create(title: "21 Jump Street", release_year: 2012)
m2 = Movie.create(title: "Marriage Story", release_year: 2019 )
m3 = Movie.create(title: "A Streetcar Named Desire", release_year: 1947)
m4 = Movie.create(title: "Train To Busan", release_year: 2016 )
m5 = Movie.create(title: "Matrix", release_year: 1999 )
m6 = Movie.create(title: "Star Wars", release_year: 2000 )
m7 = Movie.create(title: "Singham", release_year: 2011 )
m8 = Movie.create(title: "Khabhi Khushi Khabhi Gum", release_year: 2001 )
m9 = Movie.create(title: "Ramleela", release_year: 2013 )
m10 = Movie.create(title: "3 Idiots", release_year: 2009)
# 10.times do 
#     Movie.create(title: Faker::Book.title, release_year: 2003)
# end

# Scenes seed
s1 = Scene.create(description: "Marlon Brando GIF", image_url: "", movie_id: m3.id)
s2 = Scene.create(description: "Hey Stella", image_url: "https://media.giphy.com/media/lLEKRs267pYnm/giphy.gif", movie_id: m3.id )
s3 = Scene.create(description: "When cops Schmidt (Jonah Hill) and Jenko (Channing Tatum) join the secret Jump Street unit, they use their youthful appearances to go under cover as high-school students. ", image_url: "https://media.giphy.com/media/KByQbRLHWG4A8/giphy.gif", movie_id: m1.id )
s4 = Scene.create(description: "Being cops", image_url: "https://media.giphy.com/media/134LofP1dUpRXa/giphy.gif", movie_id: m1.id )
s5 = Scene.create(description: "The Power Couple", image_url: "https://media.giphy.com/media/HC6WaTdkl6idO/giphy.gif", movie_id: m1.id)
s6 = Scene.create(description: "Scarlet Johansson Happy", image_url: "https://media.giphy.com/media/Md9VknXT9EHoJ0iOS5/giphy.gif", movie_id: m2.id )
s7 = Scene.create(description: "Scarlet Johansson happy again", image_url: "https://media.giphy.com/media/MbLXQU5tHQvBSWbi6u/giphy.gif", movie_id: m2.id )
s8 = Scene.create(description: "Part of the trailer", image_url: "https://media.giphy.com/media/McIpfwWvrW6JFFrsJF/giphy.gif", movie_id: m4.id)
s9 = Scene.create(description: "Afraid", image_url: "https://media.giphy.com/media/3ohjV014TMmkUHpjAk/giphy.gif", movie_id: m4.id )
s10 = Scene.create(description: "Neo (Keanu Reeves) believes that Morpheus (Laurence Fishburne), an elusive figure considered to be the most dangerous man alive, can answer his question", image_url: "https://media.giphy.com/media/dncu2L87Y5sT6/giphy.gif", movie_id: m5.id)
s11 = Scene.create(description: "Cool Movements", image_url: "https://media.giphy.com/media/1yvoDVJQsTfHi/giphy.gif", movie_id: m5.id )
s12 = Scene.create(description: "Coolest Hair Style of all Time", image_url: "https://media.giphy.com/media/LvVcFbkQajS8M/giphy.gif", movie_id: m6.id)
s13 = Scene.create(description: "Cool Graphics", image_url: "https://media.giphy.com/media/9E7kUhnT9eDok/giphy.gif", movie_id: m6.id )
s14 = Scene.create(description: "BOLLYWOOD: The best action scene", image_url: "https://media.giphy.com/media/8rOtpl0yzFe6I/giphy.gif", movie_id: m7.id)
s15 = Scene.create(description: "BOLLYWOOD: The best fighting scene", image_url: "https://media.giphy.com/media/c8M6UJL36gXT2/giphy.gif", movie_id: m7.id )
s16 = Scene.create(description: "Real Romance", image_url: "https://media.giphy.com/media/yYQcJwvuNaUTe/giphy.gif", movie_id: m8.id)
s17 = Scene.create(description: "Bollywood Dancing", image_url: "https://media.giphy.com/media/3ofT5CiXQpcjkt5Wda/giphy.gif", movie_id: m8.id)
s18 = Scene.create(description: "Romantic Dancing", image_url: "https://media.giphy.com/media/3ofT5OqM7yt03hUfXa/giphy.gif", movie_id: m8.id )
s19 = Scene.create(description: "Bollywood version of Romeo and Juliet", image_url: "https://media.giphy.com/media/OSDBQ4LAv5KlG/giphy.gif", movie_id: m9.id )
s20 = Scene.create(description: "Ranveer Singh Dancing", image_url: "https://media.giphy.com/media/gk3s32ZrB4Jy0/giphy.gif", movie_id: m9.id)
s21 = Scene.create(description: "In college, Farhan and Raju form a great bond with Rancho due to his positive and refreshing outlook to life. Years later, a bet gives them a chance to look for their long-lost friend whose existence seems rather elusive.", image_url: "https://media.giphy.com/media/26grAKoxuP9XkPqve/giphy.gif", movie_id: m10.id)
s22 = Scene.create(description: "Kareena Kapoor being bollywood", image_url: "https://media.giphy.com/media/3o6wrrd4UhwGqUxfBm/giphy.gif", movie_id: m10.id)

# 20.times do 
#     Scene.create(description: Faker::Kpop.girl_groups , image_url: "https://media.giphy.com/media/m4g1vtdI6EXrG/giphy.gif", movie_id: Movie.all.sample.id)
# end

