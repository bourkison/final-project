# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create :name => 'Harrison Bourke', :email => 'harry@ga.co', :description => '19 year old who absolutely loves dogs!', :password => 'chicken', :password_confirmation => 'chicken', :address => '433 Alfred St N, Neutral Bay NSW 2089, Australia', :latitude => -33.8332364, :longtitude => 151.21261419999996

u2 = User.create :name => 'Matt Edge', :email => 'kane@ga.co', :description => 'Absolutely love my dog Whiskey, but down to make friends with some new dogs!', :password => 'chicken', :password_confirmation => 'chicken', :address => '12 Redfern St, Redfern NSW 2016, Australia', :latitude => -33.8930003, :longtitude => 151.207172

u3 = User.create :name => 'Richie Stanton', :email => 'richie@ga.co', :description => 'Love looking after dogs - often get paid to do so!', :password => 'chicken', :password_confirmation => 'chicken', :address => '51 Spofforth St, Mosman NSW 2088, Australia', :latitude => -33.8325518, :longtitude => 151.22944889999997
