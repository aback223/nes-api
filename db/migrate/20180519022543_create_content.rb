class CreateContent < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :content
      t.datetime :created_at
      t.integer :story_id
    end
  end
end
