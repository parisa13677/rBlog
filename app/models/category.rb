# frozen_string_literal: true

# this is a class  Category
class Category < ApplicationRecord
  has_many :posts

  validates :name, presence: true

  def self.search(query)
    where('name like ?', "%#{query}%")
  end
end
