class MilitaryRankTest < ApplicationRecord
  belongs_to :user
  has_many :questions
end
