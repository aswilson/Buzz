class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.integer :user_id
      t.integer :contact_id
      t.date :when
      t.boolean :pending
      t.boolean :received

      t.timestamps
    end
  end
end
