class CreateComapnies < ActiveRecord::Migration[5.0]
  def change
    create_table :comapnies do |t|
      t.string :name
      t.string :subdomain

      t.timestamps
    end
  end
end
