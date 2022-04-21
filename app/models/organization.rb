class Organization < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_many :hours, dependent: :destroy
  has_many :provided_services, dependent: :destroy
  has_many :services, through: :provided_services, dependent: :destroy
  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :hours
  accepts_nested_attributes_for :services


 
end
