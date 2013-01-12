class CreatePollItems < ActiveRecord::Migration
  def change
    create_table :poll_items do |t|
      t.string :name
      t.integer :votes_count, default: 0
      t.integer :poll_id

      t.timestamps
    end
  end
end
