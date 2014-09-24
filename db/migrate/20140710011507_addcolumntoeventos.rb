class Addcolumntoeventos < ActiveRecord::Migration
  def change
    add_column :eventos, :name, :string

  end
end
