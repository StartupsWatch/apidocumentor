class MethodType < ActiveRecord::Base
  # relations
  belongs_to  :api_type,        inverse_of: :method_types
  has_many    :parameter_types, inverse_of: :method_type
  has_many    :error_types,     inverse_of: :method_type
  
  # nested attributes
  accepts_nested_attributes_for :parameter_types, reject_if: lambda { |a| a[:param_type].blank? || a[:name].blank? }, allow_destroy: true
  accepts_nested_attributes_for :error_types, reject_if: lambda { |a| a[:name].blank? || a[:code].blank? }, allow_destroy: true
  
  # validations
  validates_presence_of :api_type, :name, :http_method, :url, :sample_response
  
  # accessors
  attr_accessible :api_type_id, :http_method, :name, :description, :url, :sample_request, :sample_response, :parameter_types_attributes, :error_types_attributes
  
  # serializations
  # serialize :sample_response
end
