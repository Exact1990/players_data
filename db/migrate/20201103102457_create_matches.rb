class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.belongs_to :home_team, null: false, foreign_key: { to_table: :teams }
      t.belongs_to :guest_team, null: false, foreign_key: { to_table: :teams }
      t.datetime :passed_at, null: false
    end
  end
end
