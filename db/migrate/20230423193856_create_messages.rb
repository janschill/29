class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages, id: false do |t|
      t.string :id, primary_key: true
      t.text :content
      t.belongs_to :user, type: :string, foreign_key: true

      t.timestamps
    end
  end
end
