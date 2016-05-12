class CreateDogPics < ActiveRecord::Migration
  def change
    create_table :dog_pics do |t|
      t.belongs_to :dog, index: true, foreign_key: true
      t.string :size
      t.string :link

      t.timestamps null: false
    end
  end
end
