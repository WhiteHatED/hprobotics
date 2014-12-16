class Article < ActiveRecord::Base
  validates :title, :author, presence: true, length: {minimum: 5}
  validates :content, presence: true, length: {minimum: 50}
end
