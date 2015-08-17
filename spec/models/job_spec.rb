require 'spec_helper'
require 'rails_helper'

describe Job do
  it "has a valid factory" do
    expect(FactoryGirl.create(:job)).to be_valid
  end
end