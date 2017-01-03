User.create! name: "le Tat Tung", email: "letattungtb@gmail.com",
  password: "tung123", password_confirmation: "tung123", admin: true,
  activated: true, activated_at: Time.zone.now

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create! name: name, email: email, password: password,
    password_confirmation: password, activated: true, activated_at: Time.zone.now
end
