class AddScoreToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :score, :integer
  end
end
