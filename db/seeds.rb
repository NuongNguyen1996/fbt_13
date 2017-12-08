User.create!(name_user: "Nuong",
             email: "nuong14pt@gmail.com",
             tel: "01283755270",
             password: "111111",
             password_confirmation: "111111",
             admin: true,
             gender: true,
             address: "Big C Da Nang")
User.create!(name_user: "tino",
             email: "tino@gmail.com",
             tel: "090509050905",
             password: "111111",
             password_confirmation: "111111",
             admin: false,
             gender: false,
             address: "Vinh Trung Plaza")

50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@tino.com"
  password = "password"
  tel = "0123113113"
  gender = true
  address = "a bo co"
  User.create!(name_user:  name,
               email: email,
               tel: tel,
               password: password,
               password_confirmation: password,
               gender: gender,
               address: address)
end
