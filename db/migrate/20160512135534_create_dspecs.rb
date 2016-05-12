class CreateDspecs < ActiveRecord::Migration
  def change
    create_table :dspecs do |t|
      t.belongs_to :dog, index: true, foreign_key: true
      t.belongs_to :spec, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
