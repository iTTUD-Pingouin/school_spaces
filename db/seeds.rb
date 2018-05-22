# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 20 fake users and their spaces...'
  20.times do
    user = User.new(
      email: Faker::Internet.email,
      password: "123456",
      first_name: Faker::Name.first_name
      )
    user.save!
    space = Space.new(
      city: "#{Faker::Address.city}",
      user_id: user.id
      )
    space.save!
  end
puts 'Fake users and corresponding spaces : done!'

puts 'Creating 15 fake reservations'
  mock_user_id = 20
  mock_space_id = 1
  5.times do
    mock_space_id_2 = mock_space_id + 1
    mock_space_id_3 = mock_space_id + 2
    reservation = Reservation.new(
      user_id: mock_user_id,
      space_id: mock_space_id
      )
    reservation.save!
    reservation_2 = Reservation.new(
      user_id: mock_user_id,
      space_id: mock_space_id_2
      )
    reservation_2.save!
    reservation_3 = Reservation.new(
      user_id: mock_user_id,
      space_id: mock_space_id_3
      )
    reservation_3.save!
    mock_user_id -= 1
    mock_space_id += 1
  end
puts 'Finished! Wubbalubbadubdub Mfs !'
