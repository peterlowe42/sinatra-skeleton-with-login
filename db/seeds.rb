10.times do
  user = User.new(
    first_name: Faker::Name.name ,
    last_name: Faker::Address.state,
    email: Faker::Internet.email,
    password: '1234',
    username: Faker::StarWars.character

  )
  user.save
end
