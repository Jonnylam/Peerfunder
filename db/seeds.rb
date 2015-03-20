# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  users =
    User.create!({
      email: "aliasaria@tulip.io",
      first_name: "Ali",
      last_name: "Asaria",
      password: "password",
      password_confirmation: "password",
      biography: "I am the founder of Tulip Retail. Before that I was the founder and CEO of Well.ca, Canada's largest online health, baby and beauty store.
Most of my time is spent planning for growth, managing staff, and developing technologies. My goal is to make a company that is innovative, successful, honest, and compassionate.
I am most famous for having written 'BrickBreaker' for the RIM Blackberry devices; it wasn't part of my job. It is now on 100 million Blackberries.",
      experience: 'CEO of Tulip Omni Channel Retail, CEO of Well.ca, Software Developer for RIM, Product Manager for Microsoft',
      accreditation: true,
      profile_photo_url: 'https://pbs.twimg.com/profile_images/2037532740/profile.jpg',
      location: "Toronto, Ontario, Canada",
      dob: "1975-01-15",
      remote_avatar_url: 'https://pbs.twimg.com/profile_images/2037532740/profile.jpg'
    })

    User.create!({
      email: "Alex.Haditaghi@gmail.com",
      first_name: "Alex",
      last_name: "Haditaghi",
      password: "password",
      password_confirmation: "password",
      biography: "Alex is a serial entrepreneur.In 2010 his company was 2nd fastest growing company in Canada by Profit Magazine with revenues of $55M & 5 year growth of 24,832%",
      experience: 'Founder of Pacific Mortgage Group, CEO of Mopals',
      accreditation: true,
      profile_photo_url: 'https://d1qb2nb5cznatu.cloudfront.net/users/258873-medium_jpg?1405549666',
      location: "Toronto, Ontario, Canada",
      dob: "1970-05-27",
      remote_avatar_url: 'https://d1qb2nb5cznatu.cloudfront.net/users/258873-medium_jpg?1405549666'
    })

    User.create!({
      email: "andrewgraham@borrowell.com",
      first_name: "Andrew",
      last_name: "Graham",
      password: "password",
      password_confirmation: "password",
      biography: "Andrew is co-founder and CEO of Borrowell, an innovative financial services startup that will offer competitively priced loans to consumers with good credit scores looking to refinance credit card and other high-cost debt.
Previously, Andrew led PC Insurance, a fast-growing consumer finance business part of Loblaw Companies Limited, and worked in corporate strategy and mergers & acquisitions with George Weston Limited and Nortel.
Andrew is deeply involved in his community. He is the founder and co-chair of Toronto Homecoming, president of the Banff Forum and board member of Evergreen and the Canadian Club of Toronto.
He holds an MBA from Harvard Business School and an MA from the University of Edinburgh.",
      experience: 'PC Insurance, Goerge Weston Limited & Nortel, Government of Canada',
      accreditation: true,
      profile_photo_url: 'http://cdn.crowdfundinsider.com/wp-content/uploads/2014/12/Andrew-Graham.jpg',
      location: "Toronto, Ontario, Canada",
      dob: "1985-09-27",
      remote_avatar_url: 'http://cdn.crowdfundinsider.com/wp-content/uploads/2014/12/Andrew-Graham.jpg'
    })

    User.create!({
      email: "oleggutsol@500px.com",
      first_name: "Oleg",
      last_name: "Gutsol",
      password: "password",
      password_confirmation: "password",
      biography: "Building great teams and great software. Passionate about tech, photography, travel and culture. Love meeting people who are creating beautiful things.",
      experience: 'CEO of 500px, Investor of OpenCare, Advisor for Set Scouter',
      accreditation: true,
      profile_photo_url: 'https://500px.com/',
      location: "Toronto, Ontario, Canada",
      dob: "1975-10-11",
      remote_avatar_url: 'http://www.marketwire.com/library/20130807-Oleg%20Gutsol%20CEO%20500px_lg.jpg'
    })

    User.create!({
      email: "nikolaibratkovski@opencare.com",
      first_name: "Nikolai",
      last_name: "Bratkovski",
      password: "password",
      password_confirmation: "password",
      biography: "Dropout with a track record and over 8 years in the healthcare industry. Love hacking funnels and sales hunting.",
      experience: 'Founder of Opencare, Founder of Marketaware',
      accreditation: true,
      profile_photo_url: 'https://www.opencare.com/',
      location: "Toronto, Ontario, Canada",
      dob: "1982-10-12",
      remote_avatar_url: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/8/005/017/17b/1d859cd.jpg'
    })

  companies =
    Company.create!({
      name: "Borrowell",
      owner_id: 3,
      elevator_pitch: "Borrowing money should be simple. For many of us, it’s part of our everyday lives.",
      location: "Toronto, Canada",
      industry_type: "Financial Services",
      website_url: "https://www.borrowell.com/",
      company_logo: 'https://pbs.twimg.com/profile_images/532559103063650304/athJzjSl.jpeg'
    })

    Company.create!({
      name: "Tulip Omnichannel Retail",
      owner_id: 1,
      elevator_pitch: "Tulip Retail provides a cloud-based solution to leading retailers that brings the best of online retail to their brick-and-mortar stores.",
      location: "Toronto, Canada",
      industry_type: "Retail",
      website_url: "http://tulip.io/",
      company_logo: 'https://pbs.twimg.com/profile_images/566355500711682049/pAqN-IeH.png'
    })

    Company.create!({
      name: "Mo Pals",
      owner_id: 2,
      elevator_pitch: "Write reviews, pin and like businesses, upload photos, check-in, invite friends and much more.",
      location: "Toronto, Canada",
      industry_type: "Mobile Applications",
      website_url: "https://www.mopals.com/",
      company_logo: 'https://pbs.twimg.com/profile_images/532223368666152961/RhrRdGQf_400x400.jpeg'
    })

    Company.create!({
      name: "500px",
      owner_id: 4,
      elevator_pitch: "500px is a premium photo sharing platform for aspiring and professional photographers.",
      location: "Toronto, Canada",
      industry_type: "Social Media",
      website_url: "https://500px.com/",
      company_logo: 'https://pbs.twimg.com/profile_images/426172939646431232/-650I_gs_400x400.jpeg'
    })

    Company.create!({
      name: "Open Care",
      owner_id: 5,
      elevator_pitch: "Opencare matches patients with the best healthcare providers to improve outcomes and patient experience. Our vision at Opencare is to make the world a healthier place by connecting health providers, patients and health data. As a the first step, we are laser focused on creating an amazing appointment experience for both patients and health providers. Used by over 4 million patients and 26,000 health providers, Opencare is the fastest growing healthcare platform.",
      location: "Toronto, Canada",
      industry_type: "Online Healthcare",
      website_url: "https://www.opencare.com/",
      company_logo: 'https://pbs.twimg.com/profile_images/3407164292/1d4399afe9a38d290e7492c2c60e1f49_400x400.jpeg'
    })

follows = 
  Follow.create!({ 
    followable_id: 1,
    followable_type: 'User',
    follower_type: 'User',
    follower_id: 2,
    })

  Follow.create!({ 
    followable_id: 1,
    followable_type: 'User',
    follower_type: 'User',
    follower_id: 3,
    })

  Follow.create!({ 
    followable_id: 2,
    followable_type: 'User',
    follower_type: 'User',
    follower_id: 5,
    })

  Follow.create!({ 
    followable_id: 4,
    followable_type: 'User',
    follower_type: 'User',
    follower_id: 1,
    })

  Follow.create!({ 
    followable_id: 3,
    followable_type: 'User',
    follower_type: 'User',
    follower_id: 2,
    })

  Follow.create!({ 
    followable_id: 5,
    followable_type: 'User',
    follower_type: 'User',
    follower_id: 4,
    })



