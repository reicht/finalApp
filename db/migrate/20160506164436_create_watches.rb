class CreateWatches < ActiveRecord::Migration
  def change
    create_table :watches do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
