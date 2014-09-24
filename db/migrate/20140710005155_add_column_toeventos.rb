class AddColumnToeventos < ActiveRecord::Migration
  def change
    add_column :eventos, :referencefb, :string

  end
end
