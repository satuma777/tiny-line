class CreateChatRoom1vs1s < ActiveRecord::Migration[5.0]
  def change
    create_table :chat_room1vs1s do |t|
      t.string :user_id

      t.timestamps
    end
  end
end
