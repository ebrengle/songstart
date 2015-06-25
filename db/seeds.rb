User.create!(name:  "Eric Brengle",
             email: "eric.brengle@gmail.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@songstart.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
10.times do
  title = Faker::Lorem.words(2)
  about = Faker::Lorem.sentence(5)
  city = "Nashville"
  state = "TN"
  users.each { |user| user.projects.create!(title: title,
                                            about: about,
                                            city: city,
                                            state: state) }
end
