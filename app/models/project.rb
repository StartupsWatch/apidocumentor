class Project < ActiveRecord::Base
  # relations
  has_many :api_types,    inverse_of: :project
  has_many :method_types, through:    :api_types
  
  # validations
  validates_presence_of :name
  validates_uniqueness_of :slug
  
  # accessors
  attr_accessible :name, :description
  
  # actions
  before_create :set_slug
  
  # get slug
  def set_slug
    self.slug = self.name.parameterize
  end
end
