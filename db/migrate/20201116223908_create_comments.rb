class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :list_id
      t.integer :card_id
      t.text :text
      t.timestamps
    end
  end
end
