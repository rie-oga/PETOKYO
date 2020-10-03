class RemoveAverateFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :ave_rate, :float
  end
end
