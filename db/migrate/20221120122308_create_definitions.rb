class CreateDefinitions < ActiveRecord::Migration[7.0]
  def change
    create_table :definitions do |t|
      t.text :desc
      t.integer :perf_id
    end
  end
end
