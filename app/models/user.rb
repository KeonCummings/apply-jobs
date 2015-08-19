class User < ActiveRecord::Base
	has_many :user_jobs
	has_many :jobs, :through => :user_jobs
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
	mount_uploader :resume, ResumeUploader
	mount_uploader :cover_letter, CoverLetterUploader
	accepts_nested_attributes_for :user_jobs
	def self.from_omniauth(auth)
	    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
	      user.provider = auth.provider
	      user.uid = auth.uid
	      user.name = auth.info.name
	      user.oauth_token = auth.credentials.token
	      user.save!
	 	end
	end
end
