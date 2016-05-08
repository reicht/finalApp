class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name, null: false
      t.string :size, null: false
      t.integer :intro_year, null: false
      t.integer :akc_rank
      t.integer :energy_level, null: false
      t.belongs_to :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
