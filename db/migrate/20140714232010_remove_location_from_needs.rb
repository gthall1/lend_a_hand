class RemoveLocationFromNeeds < ActiveRecord::Migration
  def change
    remove_column :needs, :location
  end
end
