class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.float :rate, null: false
      t.text :comment
      t.integer :member_id, null: false
      t.integer :spot_id, null: false

      t.timestamps null: false
    end
  end
end
