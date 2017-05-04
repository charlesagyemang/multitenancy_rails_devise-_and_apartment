class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :position
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
