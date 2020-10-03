class AddAverateToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :ave_rate, :float
  end
end
