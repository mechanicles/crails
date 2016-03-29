class Product < ActiveRecord::Base

  validates :name, presence: true
  validates :amount, presence: true

end
