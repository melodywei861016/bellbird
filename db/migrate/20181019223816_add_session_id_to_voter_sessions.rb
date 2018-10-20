class AddSessionIdToVoterSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :voter_sessions, :session_id, :string
  end
end
