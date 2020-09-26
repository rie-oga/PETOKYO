class CreateSpotImages < ActiveRecord::Migration[5.2]
  def change
    create_table :spot_images do |t|
      t.integer :spot_id
      t.string :image_id
      t.timestamps
    end
  end
end
