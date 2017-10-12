# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create :name => 'Harrison Bourke', :email => 'harry@ga.co', :description => '19 year old who absolutely loves dogs!', :password => 'chicken', :password_confirmation => 'chicken', :address => '433 Alfred St N, Neutral Bay NSW 2089, Australia', :latitude => -33.8332364, :longtitude => 151.21261419999996

u2 = User.create :name => 'Matt Edge', :email => 'matt@ga.co', :description => 'Absolutely love my dog Whiskey, but down to make friends with some new dogs!', :password => 'chicken', :password_confirmation => 'chicken', :address => '12 Redfern St, Redfern NSW 2016, Australia', :latitude => -33.8930003, :longtitude => 151.207172

u3 = User.create :name => 'Richie Stanton', :email => 'richie@ga.co', :description => 'Love looking after dogs - often get paid to do so!', :password => 'chicken', :password_confirmation => 'chicken', :address => '51 Spofforth St, Mosman NSW 2088, Australia', :latitude => -33.8325518, :longtitude => 151.22944889999997

u4 = User.create :name => 'Kane Mott', :email => 'kane@ga.co', :description => 'Don\'t have any dogs of my own, hence keen to make some friends with other people\'s!', :password => 'chicken', :password_confirmation => 'chicken', :address => '12 Penrith Ave, Wheeler Heights NSW 2097, Australia', :latitude => -33.732427, :longtitude => 151.2794176


Booking.destroy_all

b1 = Booking.create :address => "56 York St, Sydney NSW 2000, Australia", :latitude => -33.8698209, :longtitude => 151.20643289999998

b2 = Booking.create :address => "115 Sussex St, Sydney NSW 2000, Australia", :latitude => -33.8685585, :longtitude => 151.20337240000003

b3 = Booking.create :address => "1 Loftus St, Sydney NSW 2000, Australia", :latitude => -33.86235639999999, :longtitude => 151.21024349999993

b4 = Booking.create :address => "96 Cumberland St, The Rocks NSW 2000, Australia", :latitude => -33.8586684, :longtitude => 151.20743500000003

Trip.destroy_all


# ASSociations

u1.bookings << b1
u2.bookings << b2
u3.bookings << b3
u4.bookings << b4
