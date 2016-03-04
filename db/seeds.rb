# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_standard(name)
  Standard.find_or_create_by(name: name)
  print "."
end

puts " # Seeding Standards "
(1..4).each do |std|
  seed_standard("Standard " + std.to_s)
end
