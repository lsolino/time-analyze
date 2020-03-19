class ChangeScoreColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :scores, :important, :importance
  end
end
