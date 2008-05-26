class WikiPagesController < BaseController
  before_filter :load_wiki_page, :only => [:show, :edit, :update]

  protected
  def load_wiki_page
    @wiki_page = WikiPage.find_or_create_by_slug(params[:id])
  end
  public
  def show
  end
end
