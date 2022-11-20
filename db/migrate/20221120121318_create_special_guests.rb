class CreateSpecialGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :special_guests do |t|
      t.string :fio
      t.integer :tick_id
    end
  end
end
