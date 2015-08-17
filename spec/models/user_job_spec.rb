require 'spec_helper'
require 'rails_helper'

describe UserJob do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user_job)).to be_valid
  end
end