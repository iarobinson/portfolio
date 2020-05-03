class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :option_one
      t.string :option_two
      t.string :option_three
      t.string :option_four
      t.string :option_five
      t.string :answer
      t.string :inquiry
      t.references :military_rank_test, foreign_key: true

      t.timestamps
    end
  end
end
