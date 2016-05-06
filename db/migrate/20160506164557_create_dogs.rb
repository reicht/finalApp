class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :bio, null: false
      t.string :picture_url
      t.belongs_to :organization, index: true, foreign_key: true
      t.belongs_to :breed, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
