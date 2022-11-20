class CreateSostavs < ActiveRecord::Migration[7.0]
  def change
    create_table :sostavs do |t|
      t.integer :actors, array: true
    end
  end
end
