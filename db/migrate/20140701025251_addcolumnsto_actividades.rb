class AddcolumnstoActividades < ActiveRecord::Migration
  def change
    add_column :actividades, :namefb, :string
    add_column :actividades, :namegoogle, :string

  end
end
