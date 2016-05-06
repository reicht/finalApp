class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :site_url
      t.string :description
      t.integer :dogs_counter

      t.timestamps null: false
    end
  end
end
