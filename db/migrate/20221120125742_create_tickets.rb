class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.money :cost
      t.integer :performance
      t.integer :row_place, array: true
    end
  end
end
