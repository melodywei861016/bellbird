class AddUpvotesToAlarm < ActiveRecord::Migration[5.2]
  def change
    add_column :alarms, :upvotes, :integer, default: 0, null: false
  end
end
