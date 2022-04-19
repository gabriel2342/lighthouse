class Organization < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_many :hours, dependent: :destroy
  has_many :services, dependent: :destroy
  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :hours
  accepts_nested_attributes_for :services


  # def hours_attributes=(hours_attributes)
  #   hours_attributes.each do |i, hour_attributes|
  #     self.addresses.build(hour_attributes)
  #   end
  # end
end
