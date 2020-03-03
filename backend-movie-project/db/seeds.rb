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
m1= Movie.create(title: "", release_year: )
m2= Movie.create(title: "", release_year: )
m3= Movie.create(title: "A Streetcar Named Desire", release_year: 1947)
m4= Movie.create(title: "", release_year: )
m5= Movie.create(title: "", release_year: )
m6= Movie.create(title: "", release_year: )
m7= Movie.create(title: "", release_year: )
m8= Movie.create(title: "", release_year: )
m9= Movie.create(title: "", release_year: )
m10= Movie.create(title: "", release_year: )
# 10.times do 
#     Movie.create(title: Faker::Book.title, release_year: 2003)
# end

# Scenes seed
s1 = Scene.create(description: "Marlon Brando GIF", image_url: "https://media.giphy.com/media/uDUUdTwBNchBS/giphy.gif", movie_id: m3)
s2= Scene.create(description: "", image_url: "", movie_id: )
s3= Scene.create(description: "", image_url: "", movie_id: )
s4= Scene.create(description: "", image_url: "", movie_id: )
s5= Scene.create(description: "", image_url: "", movie_id: )
s6= Scene.create(description: "", image_url: "", movie_id: )
s7= Scene.create(description: "", image_url: "", movie_id: )
s8= Scene.create(description: "", image_url: "", movie_id: )
s9= Scene.create(description: "", image_url: "", movie_id: )
s10= Scene.create(description: "", image_url: "", movie_id: )
s11= Scene.create(description: "", image_url: "", movie_id: )
s12= Scene.create(description: "", image_url: "", movie_id: )
s13= Scene.create(description: "", image_url: "", movie_id: )
s14= Scene.create(description: "", image_url: "", movie_id: )
s15= Scene.create(description: "", image_url: "", movie_id: )
s16= Scene.create(description: "", image_url: "", movie_id: )
s17= Scene.create(description: "", image_url: "", movie_id: )
s18= Scene.create(description: "", image_url: "", movie_id: )
s19= Scene.create(description: "", image_url: "", movie_id: )
s20= Scene.create(description: "", image_url: "", movie_id: )
# 20.times do 
#     Scene.create(description: Faker::Kpop.girl_groups , image_url: "https://media.giphy.com/media/m4g1vtdI6EXrG/giphy.gif", movie_id: Movie.all.sample.id)
# end

