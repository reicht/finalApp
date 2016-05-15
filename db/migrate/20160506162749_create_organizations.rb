class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :pf_id
      t.integer :dogs_count

      t.timestamps null: false
    end
  end
end
