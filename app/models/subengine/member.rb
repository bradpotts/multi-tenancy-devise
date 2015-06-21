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

module subengine
  class Member < ActiveRecord::Base
    belongs_to :account, :class_name => "subengine::Account"
    belongs_to :user, :class_name => "subengine::User"
  end
end
