class ProvidedService < ApplicationRecord
  belongs_to :organization
  belongs_to :service
  
end
