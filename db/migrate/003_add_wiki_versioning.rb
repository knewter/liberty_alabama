class AddWikiVersioning < ActiveRecord::Migration
  def self.up
    WikiPage.create_versioned_table
  end

  def self.down
    WikiPage.drop_versioned_table
  end
end
