class Post < ApplicationRecord
	belongs_to :topic
	belongs_to :user
	has_many :comments, dependent: :destroy
# Orders all posts by their created_at date, in descending order, with the most recent posts displayed first.
	default_scope { order('created_at DESC') }
# Orders posts by :title
	scope :ordered_by_title, -> { order('title DESC') }
# Reverse order by created date
	scope :ordered_by_reverse_created_at, -> { order('created_at ASC') }

	validates :title, length: { minimum: 5 }, presence: true
	validates :body, length: { minimum: 20 }, presence: true
	validates :topic, presence: true
	validates :user, presence: true
end
