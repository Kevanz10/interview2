class Book < ApplicationRecord
	validates :title, presence: true, length: { maximum: 150 }
	validates :pages, numericality: { greater_than_or_equal_to: 0 }
end
