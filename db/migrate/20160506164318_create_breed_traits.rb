class CreateBreedTraits < ActiveRecord::Migration
  def change
    create_table :btraits do |t|
      t.belongs_to :breed, index: true, foreign_key: true
      t.belongs_to :trait, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
