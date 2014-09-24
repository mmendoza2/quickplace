class Addcolumntomicro < ActiveRecord::Migration
  def change
    add_column :micrositios, :referencefb, :string

  end
end
