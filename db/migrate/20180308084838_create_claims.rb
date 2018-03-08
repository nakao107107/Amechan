class CreateClaims < ActiveRecord::Migration[5.0]
  def change
    create_table :claims do |t|
      t.integer :number
      t.text :content
      t.integer :age
      t.integer :sex
      t.integer :submit

      t.timestamps
    end
  end
end
