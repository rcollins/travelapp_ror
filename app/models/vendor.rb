class Vendor < ActiveRecord::Base
  validates :vendor_name, presence: true
  validates :username, presence: true
end