require 'faker'

FactoryGirl.define do
  factory :job do |f|
  	f.name { Faker::Lorem.word }
  	f.description {Faker::Lorem.paragraphs(10)}
  end
end
