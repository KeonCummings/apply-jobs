require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  Job.create(name: Faker::Company.bs, description: Faker::Lorem.paragraphs(5))
end

Admin.create(name: "foo", email: "foo@bar.com", password: "admin", password_confirmation: "admin")