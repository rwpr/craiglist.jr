class Category < ActiveRecord::Base
  has_many :posts #must set plural
end