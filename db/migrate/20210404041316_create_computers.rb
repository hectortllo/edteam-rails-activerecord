class CreateComputers < ActiveRecord::Migration[6.0]
  def change
    create_table :computers do |t|
      t.boolean :maintenance
      t.integer :profile_id

      t.timestamps
    end
  end
end
