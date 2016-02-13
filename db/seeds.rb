# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



adimage_src= File.join("public/default_pict/admin.jpeg")
adsrc_file= File.new(adimage_src)

admin = User.create(

      username: "Admin",
      email: "webmaster@gmail.com",
      password: 12345678,
      avatar: adsrc_file,
      role: 1)

10.times do |i|
  usimage_src= File.join("public/default_pict/user#{i+1}.jpg")
  ussrc_file= File.new(usimage_src)
    us = User.create(
          username: "Toto#{i+1}",
          email: "toto#{i+1}@gmail.com",
          password: 12345678,
          avatar: ussrc_file,
          role: 0)
    end

50.times do |i|
  a=User.all.second.id
  b=User.all.last.id
  c = rand( a .. b+1 )
  if c == b+1
    c = User.all.first.id
  end
  mess = Post.create(
        title: "Message#{i+1}",
        content: "Message #{i+1} , lorem ipsum bla bla bla",
        user_id: c
        )
    end
