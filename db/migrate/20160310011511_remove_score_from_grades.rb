class RemoveScoreFromGrades < ActiveRecord::Migration
  def change
    remove_column :grades, :score, :string
  end
end
