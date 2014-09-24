class AddcolumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :estado_id, :string
  end
end
