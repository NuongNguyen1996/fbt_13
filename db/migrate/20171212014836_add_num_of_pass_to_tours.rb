class AddNumOfPassToTours < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :num_of_pass, :integer
  end
end
