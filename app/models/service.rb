class Service < ApplicationRecord
  belongs_to :organization
  has_many :provided_services
  has_many :organizations, through: :provided_services
end
