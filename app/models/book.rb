class Book < ApplicationRecord
	validates :title, presence: true, length: { maximum: 150 }
	validates :pages, numericality: { greater_than_or_equal_to: 0 }
	validates :cover, presence: true

	belongs_to :publisher_house

	has_and_belongs_to_many :authors

	mount_uploader :avatar, AvatarUploader

end
