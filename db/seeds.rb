# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cast = Cast.create([{ name: 'OC' }, { name: 'OBC' }, { name: 'BC-A' }, { name: 'BC-B' }])
nakshatra = Nakshatra.create([{ name: 'nakshatra 1' }, { name: 'nakshatra 2' }, { name: 'nakshatra 3' }, { name: 'nakshatra 4' }])