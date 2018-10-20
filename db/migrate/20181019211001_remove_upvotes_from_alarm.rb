class RemoveUpvotesFromAlarm < ActiveRecord::Migration[5.2]
  def change
    remove_column :alarms, :upvotes, :integer
  end
end
