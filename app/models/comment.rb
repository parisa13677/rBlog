# frozen_string_literal: true

# this is a class  Comment
class Comment < ApplicationRecord
  belongs_to :posts
end
