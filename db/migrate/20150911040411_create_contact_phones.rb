class CreateContactPhones < ActiveRecord::Migration
  def change
    create_table :contact_phones do |t|
      t.integer :contact_id
      t.integer :number_id
      t.boolean :active

      t.timestamps
    end
  end
end
