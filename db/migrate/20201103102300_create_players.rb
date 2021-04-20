class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.belongs_to :team, null: false, foreign_key: true
    end
  end
end
