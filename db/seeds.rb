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
      :avatar => open('public/images/seeds/AliAsaria.jpg')  
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
      :avatar => open('public/images/seeds/Alex-Haditaghi.jpg')  
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
      :avatar => open('public/images/seeds/Andrew-Graham.jpg')  
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
      profile_photo_url: 'http://www.marketwire.com/library/20130807-Oleg%20Gutsol%20CEO%20500px_lg.jpg',
      location: "Toronto, Ontario, Canada",
      dob: "1975-10-11",
      :avatar => open('public/images/seeds/OlegGustol.jpg')  
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
      :avatar => open('public/images/seeds/NikolaiBratksoi.jpg')  
    })

  #   User.create!({
  #   email: "peter@foundersfund.com",
  #   first_name: "Peter",
  #   last_name: "Thiel",
  #   password: "password",
  #   password_confirmation: "password",
  #   biography: "As a venture capitalist and entrepreneur, Peter has been involved with some of the most dynamic companies to emerge from Silicon Valley in the past decade",
  #   experience: "Cofounder of Paypal(acq:'02). Founder & Chairman at Clarium Capital, Mithril Capital Management, Palantir Technologies, Valar Ventures.  Partner at Founder's Fund ",
  #   accreditation: true,
  #   profile_photo_url: 'http://i.forbesimg.com/media/lists/people/peter-thiel_416x416.jpg',
  #   location: "San Francisco, California, USA",
  #   dob: "1967-10-11",
  #   :avatar => open('public/images/seeds/peterthiel.jpg')  
  # })

  #   User.create!({
  #   email: "marc@a16z.com",
  #   first_name: "Marc",
  #   last_name: "Andreessen",
  #   password: "password",
  #   password_confirmation: "password",
  #   biography: "Andreessen is the quintessential guy who is wrong with corporate America...Hard to hear, talks with a squeaky voice that only a dog can understand.'–Carl Icahn",
  #   experience: "Cofounder of Netscape Communications Corp. and Opsware Inc. CTO of AOL.  Founder and managing partner at Andreessen Horowitz.",
  #   accreditation: true,
  #   profile_photo_url: 'http://static1.businessinsider.com/image/532ebee46da811c10a3bff41-480/andreessen.jpg',
  #   location: "Menlo Park, California, USA",
  #   dob: "1971-07-09",
  #   :avatar => open('public/images/seeds/andreessen.jpg')  
  # })

  #   User.create!({
  #     email: "admin",
  #     first_name: "Angels North",
  #     last_name: "Admin",
  #     password: "password",
  #     password_confirmation: "password",
  #     biography: "Hello Hello Hello",
  #     experience: 'Founder of Pacific Mortgage Group, CEO of Mopals',
  #     accreditation: true,
  #     profile_photo_url: 'http://s1.postimg.org/ckh0vrvpr/Admin_Logo.png',
  #     location: "Toronto, Ontario, Canada",
  #     dob: "1970-05-27",
  #     # remote_avatar_url: 'http://s1.postimg.org/ckh0vrvpr/Admin_Logo.png'
  #   })

     User.create!({
      email: "jonathanryanlam@gmail.com",
      first_name: "Jonathan",
      last_name: "Lam",
      password: "password",
      password_confirmation: "password",
      biography: "Aspiring business developer with a strong technical background in finance and technology through education and international work experience in China and Canada.",
      experience: "Currently Business Development Manager at Crossmo Technology Co, Beijing, China
        Created concise, value-based business plans, sales proposals, and partnership proposals for Crossmo’s Checknow vertical social gaming service for mobile platforms
      Generated 5 B2B partnerships for the Check Now through revenue sharing, licensing, and distribution agreements
      Developed a feasibility study using primary and secondary market research that determined the proposed North American development and localization of a social gaming platform was ripe for expansion
      Used to be a Research Analyst at Vo Industries, Toronto, Canada Identified potential trades and positions by conducting quantitative analysis of key technical indicators on the S&P and large cap stocks
      Created quarterly portfolio reviews and analysis for clients and customers on trades conducted within the quarter
      Read market trends to identify areas and products that offer scope for profitable trading using technical analysis.",
      accreditation: false,
      profile_photo_url: 'https://pbs.twimg.com/profile_images/568141551214153728/bvRbDOSh_400x400.jpeg',
      location: "Toronto, Ontario, Canada",
      dob: "1990-07-15",
      :avatar => open('public/images/seeds/jonathanlam.jpg')  
    })

  companies =
    Company.create!({
      name: "Borrowell",
      owner_id: 3,
      elevator_pitch: "Borrowing money should be simple. For many of us, it’s part of our everyday lives.",
      location: "Toronto, Canada",
      industry_type: "Financial Services",
      website_url: "https://www.borrowell.com/",
      company_logo: 'https://pbs.twimg.com/profile_images/532559103063650304/athJzjSl.jpeg',
      product: "Borrowell is an online marketplace lending platform.  We provide Canadians who have good credit with low, fixed interest loans. We fund those loans with accredited institutional investors. We can provide low interest rate loans to borrowers and high interest returns to investors by operating at a lower cost than traditional financial intermediaries.",
      founders: "Andrew Graham, Eva Wong, Salim Naran, Scott Laitinen",
      previous_investors: "Equitable Bank, Oakwest, Roger Martin, John Bitove, Dan Debow, Stewart Lyons, Joe Canavan, Freycinet Investments",
      team: "Rob Palumbo, Charanpal Brar, Jennifer Yellow"
    })

    Company.create!({
      name: "Tulip Omnichannel Retail",
      owner_id: 1,
      elevator_pitch: "Tulip Retail provides a cloud-based solution to leading retailers that brings the best of online retail to their brick-and-mortar stores.",
      location: "Toronto, Canada",
      industry_type: "Retail",
      website_url: "http://tulip.io/",
      company_logo: 'https://pbs.twimg.com/profile_images/566355500711682049/pAqN-IeH.png',
      product: "Tulip Retail delivers a mobile platform for sales associates, giving them access to the information they need to deliver breakthrough customer service. Sales associates can easily access catalogue, customer and sales transaction information from a mobile device allowing them to quickly answer questions, make personalized recommendations and check out faster.",
      founders: "Ali Asaria",
      previous_investors: "BoxGroup, Lerer Hippeau Ventures, Promus Ventures, Founder Collective, SoftTech VC, iNovia Capital, Matt Mullenweg, Mike McCauley",
      team: "April Dunford, Rob Mueller, Matthew Charters"
    })

    Company.create!({
      name: "Mo Pals",
      owner_id: 2,
      elevator_pitch: "Write reviews, pin and like businesses, upload photos, check-in, invite friends and much more.",
      location: "Toronto, Canada",
      industry_type: "Mobile Applications",
      website_url: "https://www.mopals.com/",
      company_logo: 'https://pbs.twimg.com/profile_images/532223368666152961/RhrRdGQf_400x400.jpeg',
      product: "The MoPals beta program rewards community members for making purchases at participating businesses and engaging in a range of social media activities that enhance brand value. MoPals offers a cost-effective means for small- and medium-sized businesses to go mobile. With a selection of fully automated tools, MoPals provides these companies the flexibility and freedom to control their own marketing efforts.",
      founders: "Alex Haditaghi",
      previous_investors: "None",
      team: "Stephen Lean, Roman Alexeev"
    })

    Company.create!({
      name: "500px",
      owner_id: 4,
      elevator_pitch: "500px is a premium photo sharing platform for aspiring and professional photographers.",
      location: "Toronto, Canada",
      industry_type: "Social Media",
      website_url: "https://500px.com/",
      company_logo: 'https://pbs.twimg.com/profile_images/426172939646431232/-650I_gs_400x400.jpeg',
      product: "500px is powered by creative people worldwide and lets you discover, share, buy and sell inspiring photos. It has grown to become the premier platform with the highest quality photography worldwide.",
      founders: "Oleg Gutsol, Evgeny Tchebotarev",
      previous_investors: "Andreessen Horowitz, High Line Venture Partners, ff Venture Capital, Rugged Ventures, CAA Ventures, Harrison Metal",
      team: "Andy Yang, Arseniy Ivanov, Roxy Keshavarznia"
    })

    Company.create!({
      name: "Open Care",
      owner_id: 5,
      elevator_pitch: "Opencare matches patients with the best healthcare providers to improve outcomes and patient experience. Our vision at Opencare is to make the world a healthier place by connecting health providers, patients and health data. As a the first step, we are laser focused on creating an amazing appointment experience for both patients and health providers. Used by over 4 million patients and 26,000 health providers, Opencare is the fastest growing healthcare platform.",
      location: "Toronto, Canada",
      industry_type: "Online Healthcare",
      website_url: "https://www.opencare.com/",
      company_logo: 'https://pbs.twimg.com/profile_images/3407164292/1d4399afe9a38d290e7492c2c60e1f49_400x400.jpeg',
      product: "Opencare helps patients find the best health providers in their neighbourhood. Whether you’ve recently moved to a new area or your lifelong dentist retired, we can help.",
      founders: "Nikolai Bratkovski",
      previous_investors: "Graph Ventures, Real Ventures, Matt Wyndowe, Kirill Makharinsky, Fritz Lanman, Adam Foroughi, Dave Johnson, David Crow, Ian Jeffrey, Oleg Gutsol, Evgeny Tchebotarev",
      team: "Lee Rosen, Matt Triff, Ronen Ackerman, Eva Tang, Waclaw Wolodko, Julia Ulida, Vadim Zverugo"
    })

    Company.create!({
      name: "Gamr",
      owner_id: 9,
      elevator_pitch: "Gamr is a Vertical Social Networking Service for Mobile Gamers and Developers",
      location: "Toronto, Canada",
      industry_type: "Mobile Gaming",
      website_url: "https://www.gamr.com/",
      company_logo: '/gamr.png',
      product: "OCrosses major phone platforms (IOS, Android and WP)
Has a game center and community for mobile gamers and developers.
Buddy score boards.
Group chat for those interested / playing the same game.
Has special developer accounts, where developers can contact directly the players, offer support and promote their new games.
Helps developers increase their games’ discoverability, with “people doing the promotion”.",
      founders: "Jonathan Lam",
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

  Follow.create!({
    followable_id: 7,
    followable_type: 'User',
    follower_type: 'User',
    follower_id: 6,
    })



