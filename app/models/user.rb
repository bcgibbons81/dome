class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true, presence: true
  has_many :todo_lists, dependent: :destroy
  has_many :todo_items, dependent: :destroy

  enum role: [:user, :admin]

  after_initialize do
  if self.new_record?
    self.role ||= :user
  end
end
end
