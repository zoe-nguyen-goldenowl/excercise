# == Schema Information
#
# Table name: follows
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  followee_id :integer
#  follower_id :integer
#
FactoryBot.define do
  factory :follow do
    follower_id { 1 }
    followee_id { 1 }
  end
end
