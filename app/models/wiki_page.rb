class WikiPage < ActiveRecord::Base
  validates_uniqueness_of :slug
  wiki_column :body
  before_save :ensure_body_not_nil

  protected
  def ensure_body_not_nil
    self.body = '' if self.body.nil?
  end
end
