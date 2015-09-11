class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.string :image
      t.boolean :available
      t.string :status
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :time_zone

      t.timestamps
    end
  end
end
