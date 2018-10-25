class TodoItem < ApplicationRecord
  belongs_to :todo_list

  mount_uploader :image, ImageUploader

  include PgSearch
  pg_search_scope :search, against: [:content], using: {
      tsearch: {
        prefix: true
      }
    }
  

def completed?
   !completed_at.blank?
  end
  
end
