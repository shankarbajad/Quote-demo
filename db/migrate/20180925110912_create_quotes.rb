class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.integer :post_id
      t.string :title
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
