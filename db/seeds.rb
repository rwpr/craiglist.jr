require_relative '../config/environment'

10.times do
  Post.create   :category_id       => Faker::Number.between(1,5),
                :desc              => Faker::Address.state
end

array = ["Car","Food","Travel","Love","Career"]
array.each do |x|
  Category.create   :name   => x
end