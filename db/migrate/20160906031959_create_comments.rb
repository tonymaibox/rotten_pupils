class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.belongs_to :teacher, index: true, foreign_key: true
      t.belongs_to :rating, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end