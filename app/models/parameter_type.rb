class ParameterType < ActiveRecord::Base
  # relations
  belongs_to :method_type, inverse_of: :parameter_types
  
  # validations
  validates_presence_of :method_type, :name, :param_type
  
  # accessors
  attr_accessible :method_type_id, :param_type, :name, :description, :optional
end
