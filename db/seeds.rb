puts "🌱 Start destroy..."

User.destroy_all
Event.destroy_all
Review.destroy_all

puts "🌱 End destroy..."

puts "🌱 Seeding start..."

puts "🌱 Seeding users..."

30.times do |i|
  User.create(
    username:Faker::Internet.username,
    email:Faker::Internet.email,
  )
end

puts "🌱 Seeding basketball events..."

25.times do |i|
  Event.create(
    event_name:"#{Faker::Sports::Basketball.team} vs #{Faker::Sports::Basketball.team}",
    image_url:"https://wallpapercave.com/wp/wc1710015.jpg",
    location:"#{Faker::Address.city}, #{Faker::Address.state_abbr}",
  )
end

puts "🌱 Seeding football events..."

25.times do |i|
  Event.create(
    event_name:"#{Faker::Sports::Football.team} vs #{Faker::Sports::Football.team}",
    image_url:"http://www.wallpapers-football.net/Wallpapers/World-Cup-2014-Wallpaper-18.jpg",
    location:"#{Faker::Address.city}, #{Faker::Address.state_abbr}",
  )
end

puts "🌱 Seeding Reviews..."

50.times do |i|
  Review.create(
    user_id: User.ids.sample,
    event_id: Event.ids.sample,
    comment: Faker::Quote.famous_last_words,
    review_rating:rand(1..30)
  )
end

puts "✅ Done seeding!"
