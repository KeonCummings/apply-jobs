FactoryGirl.define do
  factory :user_job do |f|
    f.user_id {Faker::Number.digit}
    f.job_id {Faker::Number.digit}
  end
end
