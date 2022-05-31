puts "🌱 Seeding start..."

puts "🌱 Seeding users..."
30.times do |i|
  User.create(
    name:Faker::Name.name,
    email:Faker::Internet.email,
    username:Faker::Internet.username,
    password:Faker::Internet.password,
    dob:Faker::Date.birthday
  )
end

puts "🌱 Seeding basketball events..."

25.times do |i|
  Event.create(
    event_name:"#{Faker::Sports::Basketball.team} vs #{Faker::Sports::Basketball.team}",
    image_url:"https://wallpapercave.com/wp/wc1710015.jpg",
    location:"#{Faker::Address.city}, #{Faker::Address.state_abbr}",
    start_time:rand(1..7),
    end_time:rand(6..12),
    ticket_count:rand(1..100),
    rating:rand(1..10)
  )
end

puts "🌱 Seeding football events..."

25.times do |i|
  Event.create(
    event_name:"#{Faker::Sports::Football.team} vs #{Faker::Sports::Football.team}",
    image_url:"https://cdn.wallpapersafari.com/12/24/AzDxL5.jpg",
    location:"#{Faker::Address.city}, #{Faker::Address.state_abbr}",
    start_time:rand(1..7),
    end_time:rand(6..12),
    tickets:rand(1..100),
    rating:rand(1..10)
  )
end

20.times do |i|
  Ticket.create(
    user_id:User.ids.sample,
    event:Event.ids.sample,
    ticket_price:"$#{rand(30...500)}"
    paid: false
    date: "Next Week"
  )
end

puts "✅ Done seeding!"
