class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :full_number
      t.string :type
      t.boolean :active

      t.timestamps
    end
  end
end
