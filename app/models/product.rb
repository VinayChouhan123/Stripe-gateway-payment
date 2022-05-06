class Product < ApplicationRecord

	validates :name, :price, presence: true

	def to_s
		name
	end


	def to_builder
    Jbuilder.new do |product|
      product.name
      product.price
      product.currency
      product.quantity 1
    end
  end
end
