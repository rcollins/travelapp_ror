class Vendor < ActiveRecord::Base
  validates :vendor_name, presence: true
  validates :username, presence: true
  validates :password, presence: true
  validates :vendor_url, presence: true
end