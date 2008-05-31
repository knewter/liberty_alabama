class CommunityEngineToVersion55 < ActiveRecord::Migration
  def self.up
    Engines.plugins["community_engine"].migrate(55)
  end

  def self.down
    Engines.plugins["community_engine"].migrate(54)
  end
end
