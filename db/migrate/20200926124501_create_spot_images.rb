class CreateSpotImages < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_images do |t|
      t.integer :spot_id, null: false
      t.string :image_id, null: false
      t.timestamps null: false
    end
  end
end
