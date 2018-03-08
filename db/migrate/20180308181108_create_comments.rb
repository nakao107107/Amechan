class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :claim_id
      t.string :user_name
      t.text :content

      t.timestamps
    end
  end
end
