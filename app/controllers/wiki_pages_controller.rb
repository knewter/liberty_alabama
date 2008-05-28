class WikiPagesController < BaseController
  before_filter :load_wiki_page, :only => [:show, :edit, :update, :new, :create, :rollback]

  protected
  def load_wiki_page
    @wiki_page = WikiPage.find_or_create_by_slug(params[:id]) if params[:id]
    @wiki_page ||= WikiPage.new(params[:wiki_page])
  end
  public
  def new
  end
  def create
    if @wiki_page.save
      flash[:notice] = "Page was created successfully."
      redirect_to wiki_path(@wiki_page)
    else
      flash.now[:error] = "There was a problem creating that page."
      render :action => 'new'
    end
  end
  def show
  end
  def rollback
    @wiki_page.revert_to(params[:version_number])
    render :action => 'edit'
  end
  def update
    if @wiki_page.update_attributes(params[:wiki_page])
      flash[:notice] = "Page was update successfully."
      redirect_to wiki_path(@wiki_page)
    else
      flash.now[:error] = "There was a problem saving your changes.  Please, try again."
      render :action => 'edit'
    end
  end
end
