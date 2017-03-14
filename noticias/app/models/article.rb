class Article < ApplicationRecord
	has_many :comments
	validates :title, presence: true, uniqueness: true 
	validates :subhead, presence: true, length: {maximum: 250} 
	validates :body, presence: true
	def body_truncated
		body.truncate(1003)
	end
end
