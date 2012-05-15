class ErrorType < ActiveRecord::Base
  # relations
  belongs_to :method_type, inverse_of: :error_types
  
  # validations
  validates_presence_of :method_type, :code, :name
end
