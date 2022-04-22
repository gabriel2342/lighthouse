class Organization < ApplicationRecord
  has_one_attached :avatar 
  has_many :addresses, dependent: :destroy

  has_many :hours, dependent: :destroy
  has_many :provided_services, dependent: :destroy
  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :hours

  SERVICES_PROVIDED = ["Long Term Housing", "Immediate Housing", "Finding Food", "Family Services", "Living Expenses", 
    "Mental Health Services", "Substance Use", "Immigration", "Prisoner Re-entry", "Domestic Violence", 
    "Former or Current U.S. military?"]

  # def hours_attributes=(hours_attributes)
  #   hours_attributes.each do |i, hour_attributes|
  #     self.addresses.build(hour_attributes)
  #   end
  # end
end
