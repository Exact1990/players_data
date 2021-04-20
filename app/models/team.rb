class Team < ApplicationRecord
  has_many :players
  has_many :matches, -> (team) { unscope(:where).where("home_team_id = :team_id OR guest_team_id = :team_id", team_id: team.id) }
end
