# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create(login:"mattfair", password:"password", password_confirmation:"password", email:"matt@aol.com")
user = User.create(login:"benfair", password:"password", password_confirmation:"password", email:"ben@aol.com")
user = User.create(login:"danfair", password:"password", password_confirmation:"password", email:"dan@aol.com")
user = User.create(login:"stevefair", password:"password", password_confirmation:"password", email:"steve@aol.com")
user = User.create(login:"cathyfair", password:"password", password_confirmation:"password", email:"cathy@aol.com")
2.times do
  Gif.create(title:"The Gif is a Lie", url:"http://33.media.tumblr.com/tumblr_m0bbmoMnRw1rotq8bo1_500.gif", user_id:1, score:0)
end
2.times do
  Gif.create(title:"The Gif is a Lie", url:"http://stream1.gifsoup.com/view/395215/portal-o.gif", user_id:2, score:0)
end
2.times do
  Gif.create(title:"The Gif is a Lie", url:"http://img.memecdn.com/portal-kitteh_o_171600.gif", user_id:3, score:0)
end
2.times do
  Gif.create(title:"The Gif is a Lie", url:"https://d13yacurqjgara.cloudfront.net/users/196525/screenshots/1216701/companioncube2.gif", user_id:4, score:0)
end
2.times do
  Gif.create(title:"The Gif is a Lie", url:"http://i.imgur.com/CQlWoWi.gif", user_id:5, score:0)
end
