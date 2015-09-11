class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :contact_id
      t.string :fb_email
      t.string :fb_password
      t.boolean :active

      t.timestamps
    end
  end
end
