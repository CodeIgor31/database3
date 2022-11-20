class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :fio
      t.json :info
      t.integer :sostav_id
    end
  end
end