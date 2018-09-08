# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  birthday        :date
#  email           :string(255)      not null
#  name            :string(255)      not null
#  password_digest :string(255)      not null
#  profile_content :text(65535)
#  status          :integer          default("listener"), not null
#  uid             :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, email: true
  enum status: { listener: 1, speaker: 2, moderator: 3 }
end
