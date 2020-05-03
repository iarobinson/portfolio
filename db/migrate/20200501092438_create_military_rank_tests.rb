class CreateMilitaryRankTests < ActiveRecord::Migration[5.2]
  def change
    create_table :military_rank_tests do |t|
      t.string :result
      t.references :user, foreign_key: true
      t.integer :points

      t.timestamps
    end
  end
end
