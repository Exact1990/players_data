class PlayerAchievement < ApplicationRecord
  belongs_to :match
  belongs_to :player
  belongs_to :achievement
end
