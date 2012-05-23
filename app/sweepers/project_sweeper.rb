class ProjectSweeper < ActionController::Caching::Sweeper
  observe Project
  
  def after_save(project)
    clear_caches project
  end
  
  def before_destroy(project)
    clear_caches project
  end
  
  # expire caches  
  def clear_caches(project)
    expire_page project_page_path(project.slug)
  end
end