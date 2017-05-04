class AddColumnToMediaHouse < ActiveRecord::Migration[5.0]
  def change
    add_column :media_houses, :url, :string ,default: ""
  end
end
