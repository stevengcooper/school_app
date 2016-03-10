class AddNameToGrades < ActiveRecord::Migration
  def change
    add_column :grades, :name, :string
  end
end
