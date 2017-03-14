class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true, uniqueness: true 
	validates :subhead, presence: true, length: {maximum: 250} 
	validates :body, presence: true
	def body_truncated
		body.truncate(1003)
	end	
	#def formatted_created_at
	#	(created_at.to_time - 3.hours).to_time
	#end
end
