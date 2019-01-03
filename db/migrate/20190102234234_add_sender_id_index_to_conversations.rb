class AddSenderIdIndexToConversations < ActiveRecord::Migration[5.2]
  def change
    add_index :conversations, :sender_id
  end
end
