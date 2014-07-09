class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.string :default_image
      t.integer :picture_id
      t.integer :user_id

      t.timestamps
    end
  end
end
