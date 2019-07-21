class AddIndexToScores < ActiveRecord::Migration[5.0]
  def change
    add_index :scores,  :name
  end
end
