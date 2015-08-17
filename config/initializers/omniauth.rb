OmniAuth.config.logger = Rails.logger

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :linkedin, LINKEDIN_KEY, LINKEDIN_SECRET,
#    :scope => 'r_basicprofile r_emailaddress rw_company_admin', 
#    :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "connections"]
# end

OmniAuth.config.mock_auth[:linkedin] = {
      'provider' => 'linkedin',
      'uid' => '123545',
      'name' => 'keon',
      'oauth_token' => 'mock_token',
    }

OmniAuth.config.test_mode = true