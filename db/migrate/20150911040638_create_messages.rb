class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :id
      t.integer :user_id
      t.integer :contact_id
      t.date :when
      t.text :contents
      t.boolean :pending
      t.boolean :sent

      t.timestamps
    end
  end
end
