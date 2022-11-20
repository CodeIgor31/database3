class CreatePerformances < ActiveRecord::Migration[7.0]
  def change
    create_table :performances do |t|
      t.string :name
      t.string :producer
      t.date :play_date
      t.integer :sost_id
      t.string :gend
    end
  end
end
