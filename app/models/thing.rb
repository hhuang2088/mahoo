class Thing < ActiveRecord::Base
  validates :name, presence:true, length: { in: 2..100 }
  validates :description, length: { maximum: 1000}
end
