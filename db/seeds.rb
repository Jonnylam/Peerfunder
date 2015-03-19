# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  users =
    User.create!({
      email: "wesley.landriault@gmail.com",
      first_name: "Wes",
      last_name: "Landriault",
      password: "password",
      password_confirmation: "password",
      biography: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quod perspiciatis tenetur corporis quam a commodi aspernatur at doloremque soluta sapiente maxime excepturi repellendus ab, porro, cum alias optio voluptatibus!",
      accreditation: true,
      profile_photo_url: nil,
      location: "Cambridge, Ontario, Canada",
      dob: "1989-09-27"
    })

    User.create!({
      email: "wesley.landriault@gmail.com",
      first_name: "Steve Jobs",
      last_name: "Landriault",
      password: "password",
      password_confirmation: "password",
      biography: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quod perspiciatis tenetur corporis quam a commodi aspernatur at doloremque soluta sapiente maxime excepturi repellendus ab, porro, cum alias optio voluptatibus!",
      accreditation: true,
      profile_photo_url: nil,
      location: "Cambridge, Ontario, Canada",
      dob: "1989-09-27"
    })

  companies =
    Company.create!({
      name: "Wes' Company",
      owner_id: 1
      elevator_pitch: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis maiores autem expedita, in doloribus est odit. Nobis aliquid minus cumque ducimus dolorem odio mollitia iste vel qui. Sapiente, cumque, quasi.",
      location: "Toronto, Canada",
      industry_type: "Electronics",
      website_url: "http://weslandriault.com"
    })

    Company.create!({
      name: "Apple",
      owner_id: 1
      elevator_pitch: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis maiores autem expedita, in doloribus est odit. Nobis aliquid minus cumque ducimus dolorem odio mollitia iste vel qui. Sapiente, cumque, quasi.",
      location: "Toronto, Canada",
      industry_type: "Electronics",
      website_url: "http://weslandriault.com"
    })



