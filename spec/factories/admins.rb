require 'faker'

FactoryGirl.define do
  factory :admin do |f|
  	f.email "admin@foobar.com"
  	f.password "admin"
  end
end
