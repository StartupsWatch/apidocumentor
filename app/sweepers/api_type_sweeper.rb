class ApiTypeSweeper < ActionController::Caching::Sweeper
  observe ApiType
  
  def after_save(api_type)
    clear_caches api_type
  end
  
  def before_destroy(api_type)
    clear_caches api_type
  end
  
  # expire caches  
  def clear_caches(api_type)
    expire_page project_page_path(api_type.project.slug)
    expire_page api_type_page_path(api_type.project.slug, api_type.id)
  end
end