class CreateWikiPages < ActiveRecord::Migration
  def self.up
    create_table :wiki_pages do |t|
      t.string :slug
      t.text :body, :default => ''
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :wiki_pages
  end
end
