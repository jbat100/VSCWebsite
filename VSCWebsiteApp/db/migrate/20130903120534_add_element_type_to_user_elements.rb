class AddElementTypeToUserElements < ActiveRecord::Migration
  def change
    add_column :user_elements, :element_type, :string
  end
end
