class MethodTypeSweeper < ActionController::Caching::Sweeper
  observe MethodType
  
  def after_save(method_type)
    clear_caches method_type
  end
  
  def before_destroy(method_type)
    clear_caches method_type
  end
  
  # expire caches  
  def clear_caches(method_type)
    expire_page project_page_path(method_type.api_type.project.slug)
    expire_page api_type_page_path(method_type.api_type.project.slug, method_type.api_type_id)
    expire_page method_type_page_path(method_type.api_type.project.slug, method_type.api_type_id, method_type.id)
  end
end