class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :pages, presence: true
end
