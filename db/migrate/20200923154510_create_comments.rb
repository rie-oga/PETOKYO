class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.float :rate
      t.text :comment
      t.integer :member_id
      t.integer :spot_id

      t.timestamps
    end
  end
end
