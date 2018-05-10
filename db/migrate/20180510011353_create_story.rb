class CreateStory < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.datetime :created_at
      t.string :content
    end
  end
end
