class UserJob < ActiveRecord::Base
  has_many :users
  has_many :jobs
end