class AddRecipientIdIndexToConversations < ActiveRecord::Migration[5.2]
  def change
    add_index :conversations, :recipient_id
  end
end
