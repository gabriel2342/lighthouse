class Service < ApplicationRecord
  has_many :provided_services, dependent: :destroy
  has_many :organizations, through: :provided_services
end
