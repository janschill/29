class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: false do |t|
      t.string :id, primary_key: true
      t.string :name
      t.boolean :going
      t.string :partner
      t.boolean :hide_name

      t.timestamps
    end
  end
end
