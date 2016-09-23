# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

h1 = H1.create!
h1.h1_properties.create!(fontsize: 36, letterspacing: 4, texttransformation: "capitalize", fontweight: 700)

h2 = H2.create!
h2.h2_properties.create!(fontsize: 32, letterspacing: 2, texttransformation: "lowercase", fontweight: 400, wordspacing: 5)

button = Button.create!
button.button_properties.create!(
  fontsize: 16, texttransformation: "capitalize", fontweight: 200, letterspacing: 3, padding: 15,
    border: 5, borderradius: 10, border_red: 180, border_green: 50, border_blue: 50,
    bg_red: 120, bg_green: 30, bg_blue:70,
    color_red: 255, color_green: 70, color_blue: 30
  )