class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :student, index: true, foreign_key: true
      t.belongs_to :teacher, index: true, foreign_key: true
      t.integer :attendance
      t.integer :studies
      t.integer :discussion
      t.integer :group_work
      t.integer :independent_work
      t.integer :distractability
      t.integer :disruptability

      t.timestamps null: false
    end
  end
end
