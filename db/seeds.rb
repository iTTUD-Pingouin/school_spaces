# 1- CREATE THE FAKE USERS AND THE SPACE THEY LEND
puts '------------Creating 5 fake users and their spaces (their passwords are 123456)------------ '
puts ' '
virgile = User.new(
  email: "vivi@vivi.com",
  password: "123456",
  first_name: "Virgile"
  )
virgile.save!
virgile_place = Space.new(
  city: "Angers",
  user_id: 1,
  address: "33 Place Imbach, 49100",
  )
virgile_place.remote_photo_url = "http://lycee-felix-mayer.com/images/etablissement/lycee-polyvalent-felix-mayer-creutzwald-cour-3.jpg"
virgile_place.save!
puts "#{virgile.first_name} (#{virgile.email}) - City: #{virgile_place.city.capitalize} - Address: #{virgile_place.address}"
guillaume = User.new(
  email: "guillaume@superman.com",
  password: "123456",
  first_name: "Guillaume"
  )
guillaume.save!
guillaume_place = Space.new(
  city: "Paris",
  user_id: 2,
  address: "36 rue Mazarine, 75006",
  )
guillaume_place.remote_photo_url = "http://lycee-felix-mayer.com/images/etablissement/lycee-polyvalent-felix-mayer-creutzwald-cour-3.jpg"
guillaume_place.save!
guillaume_second_place = Space.new(
  city: "Paris",
  user_id: 2,
  address: "96 avenue de la République, 75011",
  )
guillaume_second_place.save!
puts "#{guillaume.first_name} (#{guillaume.email}) - 1st place - City: #{guillaume_place.city.capitalize} - Address: #{guillaume_place.address}"
puts "#{guillaume.first_name} (#{guillaume.email}) - 2nd place - City: #{guillaume_second_place.city.capitalize} - Address: #{guillaume_second_place.address}"
matzi = User.new(
  email: "superslovenian@rock.com",
  password: "123456",
  first_name: "Matzi"
  )
matzi.save!
puts "#{matzi.first_name} (#{matzi.email}) - No place to let"
jauzion = User.new(
  email: "destroyer@destroy.fr",
  password: "123456",
  first_name: "Yannick"
  )
jauzion.save!
jauzion_place = Space.new(
  city: "Toulouse",
  user_id: 4,
  address: "1 Place du Capitole, 31000",
  )
jauzion_place.remote_photo_url = "http://lycee-felix-mayer.com/images/etablissement/lycee-polyvalent-felix-mayer-creutzwald-cour-3.jpg"
jauzion_place.save!
puts "#{jauzion.first_name} (#{jauzion.email}) - City: #{jauzion_place.city.capitalize} - Address: #{jauzion_place.address}"
marty = User.new(
  email: "tenderlove@tender.com",
  password: "123456",
  first_name: "David"
  )
marty.save!
marty_place = Space.new(
  city: "Perpignan",
  user_id: 5,
  address: "Place de la Loge, 66000",
  )
marty_place.remote_photo_url = "http://lycee-felix-mayer.com/images/etablissement/lycee-polyvalent-felix-mayer-creutzwald-cour-3.jpg"
marty_place.save!
marty_place2 = Space.new(
  city: "Angers",
  user_id: 5,
  address: "Place de la Belle pioche, 66000",
  )
marty_place2.save!
puts "#{marty.first_name} (#{marty.email}) - City: #{marty_place.city.capitalize} - Address: #{marty_place.address}"
puts ' '
# 2- CREATE 4 FAKE RESERVATIONS
puts '------------Creating 4 fake reservations------------'
puts ' '
reservation = Reservation.new(
  user_id: 1,
  space_id: 2
  )
reservation.save!
reservation_2 = Reservation.new(
  user_id: 1,
  space_id: 4
  )
reservation_2.save!
reservation_3 = Reservation.new(
  user_id: 2,
  space_id: 4
  )
reservation_3.save!
reservation_4 = Reservation.new(
  user_id: 3,
  space_id: 5
  )
reservation_4.save!
reservations = Reservation.all
reservations.each do |reservation|
  space = Space.find_by(id:reservation.space_id)
  user = User.find_by(id:reservation.user_id)
  puts "#{user.first_name} booked in #{space.city.capitalize}"
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
