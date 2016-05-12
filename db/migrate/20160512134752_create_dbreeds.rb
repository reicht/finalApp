class CreateDbreeds < ActiveRecord::Migration
  def change
    create_table :dbreeds do |t|
      t.belongs_to :dog, index: true, foreign_key: true
      t.belongs_to :breed, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
