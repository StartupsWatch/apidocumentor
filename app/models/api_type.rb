class ApiType < ActiveRecord::Base
  # relations
  belongs_to    :project,       inverse_of: :api_types
  has_many      :method_types,  inverse_of: :api_type
  
  # validations
  validates_presence_of :name
end
