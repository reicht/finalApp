class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :pf_id, null: false
      t.string :shelter_id, null: false
      t.string :name, null: false
      t.string :bio, null: false
      t.string :age, null: false
      t.string :sex, null: false
      t.string :size, null: false
      t.string :mix, null: false
      t.datetime :last_update, null: false
      t.belongs_to :organization, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
