class ParameterType < ActiveRecord::Base
  # relations
  belongs_to :method_type, inverse_of: :parameter_types
  
  # validations
  validates_presence_of :method_type, :name, :param_type
end
