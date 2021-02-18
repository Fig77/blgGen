class Article < ApplicationRecord
	belongs_to :user, :foreign_key => :user_id

	validates :title, presence: true
	validates :body, presence: true
end
