require 'spec_helper'

describe Subengine::User do
  context "fields" do
    
  end

  context "validations" do
    it { is_expected.to validate_presence_of(:email) }
  end

end
