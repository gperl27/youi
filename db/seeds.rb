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
    border: 5, borderradius: 10, border_style: "solid", border_hue: 180, border_saturation: 50, border_luminosity: 50,
    bg_hue: 120, bg_saturation: 30, bg_luminosity:70,
    color_hue: 255, color_saturation: 70, color_luminosity: 30
  )

paragraph = Paragraph.create!
paragraph.paragraph_properties.create!(textalign: "left", fontsize: 12, wordspacing: 3, padding: 5, indent: 25)

paragraph2 = Paragraph.create!
paragraph2.paragraph_properties.create!(textalign: "center", fontsize: 14, wordspacing: 4, padding: 10, indent: 15)
