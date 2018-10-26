class TodoList < ApplicationRecord
	has_many :todo_items, dependent: :destroy
	belongs_to :user

	include PgSearch
  pg_search_scope :search_by_title, against: [:title], using: {
      tsearch: {
        prefix: true
      }
    }
end
