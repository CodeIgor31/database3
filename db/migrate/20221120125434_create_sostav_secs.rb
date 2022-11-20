class CreateSostavSecs < ActiveRecord::Migration[7.0]
  def change
    create_table :sostav_secs do |t|
      t.string :name
    end
  end
end
