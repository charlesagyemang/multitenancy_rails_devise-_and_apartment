class AddColumnToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :url, :text
  end
end
