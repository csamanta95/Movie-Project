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
10.times do 
    Movie.create(title: Faker::Book.title, release_year: 2003)
end

# Scenes seed
20.times do 
    Scene.create(description: Faker::Kpop.girl_groups , image_url: "https://media.giphy.com/media/m4g1vtdI6EXrG/giphy.gif", movie_id: Movie.all.sample.id)
end

