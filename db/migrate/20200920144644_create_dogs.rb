class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.integer :member_id
      t.string :name
      t.string :image_id
      t.string :kind
      t.string :sex
      t.string :age

      t.timestamps
    end
  end
end
