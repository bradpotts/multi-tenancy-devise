# == Schema Information
#
# Table name: subengine_members
#
#  id         :integer          not null, primary key
#  account_id :integer
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

module Subengine
  class Member < ActiveRecord::Base
    belongs_to :account, :class_name => "Subengine::Account"
    belongs_to :user, :class_name => "Subengine::User"
  end
end
