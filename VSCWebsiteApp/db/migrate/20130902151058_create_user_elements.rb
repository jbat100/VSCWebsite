class CreateUserElements < ActiveRecord::Migration
  def change
    create_table :user_elements do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end
