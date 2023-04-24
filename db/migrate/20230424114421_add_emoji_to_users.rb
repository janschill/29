class AddEmojiToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :emoji, :string
  end
end
