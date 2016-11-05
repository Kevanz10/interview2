class Author < ApplicationRecord
	validates :first_name, :last_name, presence: true, format:{ with: /[a-z]/,  
																											message: "only allows letters"}
	validates :birthdate
end

