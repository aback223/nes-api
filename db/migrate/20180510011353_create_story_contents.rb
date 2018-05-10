class CreateStoryContents < ActiveRecord::Migration[5.0]
  def change
    create_table :story_contents do |t|
      t.datetime :created_at
      t.string :content
    end
  end
end
