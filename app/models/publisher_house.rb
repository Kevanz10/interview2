class PublisherHouse < ApplicationRecord
	validates :name, presence: true, uniqueness: true, length: { maximum: 150 }
end
