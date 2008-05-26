class WikiPage < ActiveRecord::Base
  validates_uniqueness_of :slug
  wiki_column :body
  before_save :ensure_body_not_nil

  def to_param
    self.slug
  end
  protected
  def ensure_body_not_nil
    self.body = '' if self.body.nil?
  end
end
