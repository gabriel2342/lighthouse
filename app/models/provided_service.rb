class ProvidedService < ApplicationRecord
  belongs_to :organization
  belongs_to :services
  has_many :services
  has_many :organizations
end
