class AddAverateToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :ave_rate, :float
  end
end
