class CreatePlayerAchievements < ActiveRecord::Migration[6.0]
  def change
    create_table :player_achievements do |t|
      t.belongs_to :player, null: false, foreign_key: true
      t.belongs_to :match, null: false, foreign_key: true
      t.belongs_to :achievement, null: false, foreign_key: true
    end
  end
end
