module WikiPagesHelper
  def rollback_dropdown content
    versions = versions_array(content)
    the_options = options_for_select(versions.reverse)
    the_id = content.id
    haml_tag :select, { :onchange => "redirect_to_rollback_link(#{the_id}, this.options[this.selectedIndex].value)" } do
      puts the_options
    end
  end
  def versions_array content
    (1..content.versions.length).to_a
  end
end
