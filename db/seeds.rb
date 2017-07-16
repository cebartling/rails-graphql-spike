# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

harrison_ford = Actor.create!(name: 'Harrison Ford',
                              gender: :male,
                              birth_date: Date.strptime('19420713',"%Y%m%d"))


raiders_of_the_lost_ark = Movie.create!(title: 'Indiana Jones and the Raiders of the Lost Ark',
                                        year: 1981,
                                        budget_in_millions: 18.0,
                                        box_office_in_millions: 389.9)
raiders_of_the_lost_ark.actors << harrison_ford

