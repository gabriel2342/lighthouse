class Hour < ApplicationRecord
  belongs_to :organization
  enum day: %i(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
end
