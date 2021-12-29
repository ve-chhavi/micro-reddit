class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body

      t.timestamps
    end

    add_reference :comments, :author
    add_reference :comments, :post
  end
end
