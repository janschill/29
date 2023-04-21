class ApplicationRecord < ActiveRecord::Base
  include UlidPk
  self.abstract_class = true

  primary_abstract_class
end
