class CreateBreedTraits < ActiveRecord::Migration
  def change
    create_table :breed_traits do |t|
      t.belongs_to :breed, index: true, foreign_key: true
      t.belongs_to :trait, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
