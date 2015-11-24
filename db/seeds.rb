# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

40.times do
  Gif.create(title:"Twins are the best!", url:"http://i.imgur.com/0kpsiIx.gif", user_id:1, score:0)
end
user = User.create(login:"mattfair", password:"password", password_confirmation:"password", email:"matt@aol.com")
