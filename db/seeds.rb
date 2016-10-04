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

h3 = H3.create!
h3.h3_properties.create!(fontsize: 28, letterspacing: 3, texttransformation: "uppercase", fontweight: 300, wordspacing: 3)

h4 = H4.create!
h4.h4_properties.create!(fontsize: 22, letterspacing: 1, texttransformation: "uppercase", fontweight: 300, wordspacing: 3)

h5 = H5.create!
h5.h5_properties.create!(fontsize: 14, letterspacing: 2, texttransformation: "capitalize", fontweight: 200, wordspacing: 2)

button_1 = Button.create!
button_1.button_properties.create!(
  fontsize: 16, texttransformation: "capitalize", fontweight: 200, letterspacing: 3, padding: 15,
    border: 5, borderradius: 10, border_style: "solid", border_hue: 50, border_saturation: 50, border_luminosity: 50,
    bg_hue: 0, bg_saturation: 100, bg_luminosity: 100,
    color_hue: 0, color_saturation: 0, color_luminosity: 0
  )

button_2 = Button.create!
button_2.button_properties.create!(
  fontsize: 16, texttransformation: "capitalize", fontweight: 200, letterspacing: 3, padding: 15,
    border: 5, borderradius: 10, border_style: "solid", border_hue: 51, border_saturation: 51, border_luminosity: 51,
    bg_hue: 1, bg_saturation: 99, bg_luminosity: 99,
    color_hue: 1, color_saturation: 1, color_luminosity: 1
  )

button_3 = Button.create!
button_3.button_properties.create!(
  fontsize: 16, texttransformation: "capitalize", fontweight: 200, letterspacing: 3, padding: 15,
    border: 5, borderradius: 10, border_style: "solid", border_hue: 52, border_saturation: 52, border_luminosity: 52,
    bg_hue: 2, bg_saturation: 98, bg_luminosity: 98,
    color_hue: 2, color_saturation: 2, color_luminosity: 2
  )


li = Listelement.create!
li.listelement_properties.create!(fontsize: 14, letterspacing: 6, texttransformation: "capitalize", fontstyle: "italic")

paragraph = Paragraph.create!
paragraph.paragraph_properties.create!(textalign: "left", fontsize: 12, wordspacing: 3, padding: 5, indent: 25)

paragraph2 = Paragraph.create!
paragraph2.paragraph_properties.create!(textalign: "center", fontsize: 14, wordspacing: 4, padding: 10, indent: 15)

image = Image.create!
image.image_properties.create!(height: 250, width: 250, border: 1, borderradius: 5, padding: 15, 
  border_hue: 180, border_luminosity: 50, border_saturation: 50
  )

section_1 = Section.create!
section_1.section_properties.create!(
  color_hue: 0, color_luminosity: 0, color_saturation: 0,
  bg_hue: 0, bg_luminosity: 100, bg_saturation: 100,
  )
section_2 = Section.create!
section_2.section_properties.create!(
  color_hue: 1, color_luminosity: 1, color_saturation: 1,
  bg_hue: 1, bg_luminosity: 99, bg_saturation: 99,
  )
section_3 = Section.create!
section_3.section_properties.create!(
  color_hue: 2, color_luminosity: 2, color_saturation: 2,
  bg_hue: 2, bg_luminosity: 98, bg_saturation: 98,
  )
section_4 = Section.create!
section_4.section_properties.create!(
  color_hue: 3, color_luminosity: 3, color_saturation: 3,
  bg_hue: 3, bg_luminosity: 97, bg_saturation: 97,
  )

body = Body.create!
heading = Body.create!
bodyfont = body.body_properties.create!(fontfamily: "Arial")
headingfont = heading.body_properties.create!(fontfamily: "Georgia")


#SecureRandom.urlsafe_base64)
# user_1 = User.create!(cookie_id: 1)
# user_2 = User.create!(cookie_id: 2)
