class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.string :nickname
      t.float :urgency
      t.float :important
      t.float :circumstance

      t.timestamps
    end
  end
end
