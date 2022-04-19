class Organization < ApplicationRecord
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :addresses
  # def addresses_attributes=(addresses_attributes)
  #   addresses_attributes.each do |i, address_attributes|
  #     self.addresses.build(address_attributes)
  #   end
  # end
end
