# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts '------------Creating 8 fake users and their spaces (their passwords are 123456)------------ '
puts ' '
virgile = User.new(
  email: "vivi@vivi.com",
  password: "123456",
  first_name: "Virgile"
  )
virgile.save!
angers = Space.new(
  city: "Angers",
  user_id: virgile.id,
  address: "33 Place Imbach, 49100",
  )
angers.save!
puts "#{virgile.first_name} (#{virgile.email}) - City: #{angers.city.capitalize} - Address: #{angers.address}"
guillaume = User.new(
  email: "guillaume@superman.com",
  password: "123456",
  first_name: "Guillaume"
  )
guillaume.save!
paris = Space.new(
  city: "Paris",
  user_id: guillaume.id,
  address: "36 rue Mazarine, 75006",
  )
paris.save!
puts "#{guillaume.first_name} (#{guillaume.email}) - City: #{paris.city.capitalize} - Address: #{paris.address}"
matzi = User.new(
  email: "superslovenian@rock.com",
  password: "123456",
  first_name: "Matzi"
  )
matzi.save!
paris_2 = Space.new(
  city: "Paris",
  user_id: matzi.id,
  address: "96 avenue de la République, 75011",
  )
paris_2.save!
puts "#{matzi.first_name} (#{matzi.email}) - City: #{paris_2.city.capitalize} - Address: #{paris_2.address}"
jauzion = User.new(
  email: "destroyer@destroy.fr",
  password: "123456",
  first_name: "Yannick"
  )
jauzion.save!
toulouse = Space.new(
  city: "Toulouse",
  user_id: jauzion.id,
  address: "1 Place du Capitole, 31000",
  )
toulouse.save!
puts "#{jauzion.first_name} (#{jauzion.email}) - City: #{toulouse.city.capitalize} - Address: #{toulouse.address}"
marty = User.new(
  email: "tenderlove@tender.com",
  password: "123456",
  first_name: "David"
  )
marty.save!
perpignan = Space.new(
  city: "Perpignan",
  user_id: marty.id,
  address: "Place de la Loge, 66000",
  )
perpignan.save!
puts "#{marty.first_name} (#{marty.email}) - City: #{perpignan.city.capitalize} - Address: #{perpignan.address}"

puts 'Fake users and corresponding spaces : done!'
puts ' '
puts '------------Creating 6 fake reservations------------'
puts ' '
  mock_user_id = 4
  mock_space_id = mock_user_id - 3
  mock_space_id_2 = mock_user_id - 2
  mock_space_id_3 = mock_user_id - 1
  2.times do
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
    user = User.find_by(id: mock_user_id)
    city = Space.find_by(id: mock_space_id)
    city_2 = Space.find_by(id: mock_space_id_2)
    city_3 = Space.find_by(id: mock_space_id_3)
    puts "#{user.first_name} booked in #{city.city.capitalize}, #{city_2.city.capitalize} and #{city_3.city.capitalize}"
  end
  puts ' '
puts '------------------------------Finished! Wubbalubbadubdub Mfs !------------------------------'
puts ' '
puts '

 ███▄ ▄███▓ █████▒██████
▓██▒▀█▀ ██▓██   ▒██    ▒
▓██    ▓██▒████ ░ ▓██▄
▒██    ▒██░▓█▒  ░ ▒   ██▒
▒██▒   ░██░▒█░  ▒██████▒▒
░ ▒░   ░  ░▒ ░  ▒ ▒▓▒ ▒ ░
░  ░      ░░    ░ ░▒  ░ ░
░      ░   ░ ░  ░  ░  ░
       ░              ░
'
