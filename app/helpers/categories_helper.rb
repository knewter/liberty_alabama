module CategoriesHelper
  def category_forum_link
    "Visit the " + link_to("#{@category.name} Forum", forum_path(@category.id))
  end
end
