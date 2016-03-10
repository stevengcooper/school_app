class RemoveNameFromGrades < ActiveRecord::Migration
  def change
    remove_column :grades, :name, :string
  end
end
