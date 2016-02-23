require 'faker'
10.times do |i|
  User.create(
    first_name: Faker::Name.first_name ,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: '1234',
    username: Faker::Name.name
  )
end
