class Article < ApplicationRecord
	has_many :comments
	validates :title, presence: true, uniqueness: true 
	validates :subhead, presence: true, length: {maximum: 250} 
	validates :body, presence: true
end
