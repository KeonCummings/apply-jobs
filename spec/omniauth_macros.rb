module OmniauthMacros
  def mock_auth_hash
    # The mock_auth configuration allows you to set per-provider (or default)
    # authentication hashes to return during integration testing.
    OmniAuth.config.mock_auth[:linkedin] = {
      'provider' => 'linkedin',
      'uid' => '123545',
      'name' => 'keon',
      'oauth_token' => 'mock_token',
    }
  end
end