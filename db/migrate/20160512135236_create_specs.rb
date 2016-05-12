class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
