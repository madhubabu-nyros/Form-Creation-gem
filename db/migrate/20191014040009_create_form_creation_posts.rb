class CreateFormCreationPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :form_creation_posts do |t|
      t.string :title
      t.text :description
      t.string :created_by

      t.timestamps
    end
  end
end
