# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Whitny Edwards", email: "test@gmail.com", password: "password")
User.create(name: "Britny Edwards", email: "test1@gmail.com", password: "password")

Interview.create(company_name: "StreetEasy", location: "New York", salary: 70000, day: "2019-10-01T00:00:00+00:00", position: "Software Engineer Level 1", user_id: 1)
Interview.create(company_name: "Noom", location: "New York", salary: 60000, day: "2019-10-05T00:00:00+00:00", position: "Front-End Software Engineer Level 1", user_id: 2)

# Review.create(inquiry: "Out of your projects, what was your favorite?", answer: "My final project because it encompassed everything that I learned.")
# Review.create(inquiry: "Why do you want to work for StreetEasy?", answer: "Because I love real estate and NYC!")
# Review.create(inquiry: "What online resources do you use to help you do your job?", inquiry: "Stack Overflow, API docs")

    review_responses = [["Out of your projects, what was your favorite?", "My final project because it encompassed everything that I learned.", 1],
    ["Why do you want to work for StreetEasy?", "Because I love real estate and NYC!", 1], 
    ["What online resources do you use to help you do your job?", "Stack Overflow, API docs", 1]
    ]

    review_responses.each do |r|
        Review.create(inquiry: r[0], answer: r[1], interview_id: r[2])
    end 

    review_responses = [["Out of your projects, what was your favorite?", "My final project because it encompassed everything that I learned.", 2],
    ["Why do you want to work for Noom?", "Because I am passionate about helping people with their health and fitness goals", 2], 
    ["What online resources do you use to help you do your job?", "Stack Overflow, API docs", 2]
    ]

    review_responses.each do |r|
        Review.create(inquiry: r[0], answer: r[1], interview_id: r[2])
    end 
