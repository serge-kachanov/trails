# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    User.create(id: 10, email: 'u@u.com', password: '12345678', password_confirmation: '12345678', name: 'u')
    Tweet.create(id: 16, tweet: "lollol", autor_id: 7)
