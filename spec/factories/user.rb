require 'faker'

FactoryGirl.define do
  password = Faker::Internet.password
  factory :user do |f|
    f.name { Faker::Name.name }
    f.email { Faker::Internet.email }
	end
end
