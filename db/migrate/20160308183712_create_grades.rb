class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :score
      t.date :date
      t.string :assignment_name

      t.timestamps null: false
    end
  end
end
