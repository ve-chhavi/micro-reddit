class CreatePost < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end

    add_reference :posts, :author
  end
end
