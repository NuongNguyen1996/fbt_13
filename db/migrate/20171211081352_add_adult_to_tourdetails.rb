class AddAdultToTourdetails < ActiveRecord::Migration[5.1]
  def change
    add_column :tourdetails, :num_of_pass, :int
  end
end
