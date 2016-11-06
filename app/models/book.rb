class Book < ApplicationRecord
	validates :title, :cover, presence: true, length: { maximum: 150 }
	validates :pages, numericality: { greater_than_or_equal_to: 0 }

	belongs_to :publisher_house

	has_and_belongs_to_many :authors
end
