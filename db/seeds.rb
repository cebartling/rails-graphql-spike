# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

harrison_ford = Actor.create!(name: 'Harrison Ford',
                              gender: :male,
                              birth_date: Date.strptime('19420713', "%Y%m%d"))
sean_connery = Actor.create!(name: 'Thomas Sean Connery',
                             gender: :male,
                             birth_date: Date.strptime('19300825', "%Y%m%d"))
karen_allen = Actor.create!(name: 'Karen Jane Allen',
                            gender: :female,
                            birth_date: Date.strptime('19511005', "%Y%m%d"))
kate_capshaw = Actor.create!(name: 'Kathleen "Kate" Capshaw Spielberg',
                             gender: :female,
                             birth_date: Date.strptime('19531103', "%Y%m%d"))
cate_blanchett = Actor.create!(name: 'Catherine Elise Blanchett',
                               gender: :female,
                               birth_date: Date.strptime('19690514', "%Y%m%d"))
carrie_fisher = Actor.create!(name: 'Carrie Frances Fisher',
                              gender: :female,
                              birth_date: Date.strptime('19561021', "%Y%m%d"))
mark_hamill = Actor.create!(name: 'Mark Richard Hamill',
                            gender: :male,
                            birth_date: Date.strptime('19510925', "%Y%m%d"))


####################################################################################################################
## Indiana Jones and the Raiders of the Lost Ark
####################################################################################################################
movie = Movie.create!(title: 'Indiana Jones and the Raiders of the Lost Ark',
                      year: 1981,
                      budget_in_millions: 18.0,
                      box_office_in_millions: 389.9)
movie.actors << harrison_ford
movie.actors << karen_allen


####################################################################################################################
## Indiana Jones and the Temple of Doom
####################################################################################################################
movie = Movie.create!(title: 'Indiana Jones and the Temple of Doom',
                      year: 1984,
                      budget_in_millions: 28.2,
                      box_office_in_millions: 333.1)
movie.actors << harrison_ford
movie.actors << kate_capshaw


####################################################################################################################
## Indiana Jones and the Last Crusade
####################################################################################################################
movie = Movie.create!(title: 'Indiana Jones and the Last Crusade',
                      year: 1989,
                      budget_in_millions: 55.4,
                      box_office_in_millions: 474.2)
movie.actors << harrison_ford
movie.actors << sean_connery


####################################################################################################################
## Indiana Jones and the Kingdom of the Crystal Skull
####################################################################################################################
movie = Movie.create!(title: 'Indiana Jones and the Kingdom of the Crystal Skull',
                      year: 2008,
                      budget_in_millions: 185.0,
                      box_office_in_millions: 786.6)
movie.actors << harrison_ford
movie.actors << karen_allen
movie.actors << cate_blanchett


####################################################################################################################
## Star Wars: Episode IV – A New Hope
####################################################################################################################
movie = Movie.create!(title: 'Star Wars: Episode IV – A New Hope',
                      year: 1977,
                      budget_in_millions: 11.0,
                      box_office_in_millions: 775.4)
movie.actors << mark_hamill
movie.actors << harrison_ford
movie.actors << carrie_fisher


####################################################################################################################
## Star Wars: Episode V – The Empire Strikes Back
####################################################################################################################
movie = Movie.create!(title: 'Star Wars: Episode V – The Empire Strikes Back',
                      year: 1980,
                      budget_in_millions: 33.0,
                      box_office_in_millions: 538.4)
movie.actors << mark_hamill
movie.actors << harrison_ford
movie.actors << carrie_fisher


####################################################################################################################
## Star Wars: Episode VI – Return of the Jedi
####################################################################################################################
movie = Movie.create!(title: 'Star Wars: Episode VI – Return of the Jedi',
                      year: 1983,
                      budget_in_millions: 42.7,
                      box_office_in_millions: 572.7)
movie.actors << mark_hamill
movie.actors << harrison_ford
movie.actors << carrie_fisher


####################################################################################################################
## Star Wars: Episode VII – The Force Awakens
####################################################################################################################
movie = Movie.create!(title: 'Star Wars: Episode VII – The Force Awakens',
                      year: 2015,
                      budget_in_millions: 306,
                      box_office_in_millions: 2068.0)
movie.actors << mark_hamill
movie.actors << harrison_ford
movie.actors << carrie_fisher

